require 'rspec'
require 'dessert'

describe Dessert do

  let(:chef) { double("chef", name: "Gordan Ramsay") }
  subject(:dessert) { Dessert.new('Ice Cream', 1, chef) }

  describe "#initialize" do

    it "sets a type" do
      expect(dessert.type).to eq("Ice Cream")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(1)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq ([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Ice Cream", "Non-integer", "chef")}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do

    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('ice')

      expect(dessert.ingredients).to eq(['ice'])
    end

  end

  describe "#mix!" do
  
    it "shuffles the ingredient array" do
      dessert.add_ingredient('ice')
      dessert.add_ingredient('cream')
      dessert.add_ingredient('sugar')
      dessert.add_ingredient('spice')
      dessert.add_ingredient('everything nice')
      original_order = dessert.ingredients.dup
      dessert.mix!

      expect(original_order).not_to eq(dessert.ingredients)
    end

  end

  describe "#eat" do

    it "subtracts an amount from the quantity" do
      dessert.eat(1)

      expect(dessert.quantity).to eq(0)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect do
        dessert.eat(2)
      end.to raise_error("not enough left!")
    end

  end

  describe "#serve" do

    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Gordon Ramsey the Great Baker")
      expect(dessert.serve).to eq("Chef Gordon Ramsey the Great Baker has made 1 Ice Creams!")
    end

  end

  describe "#make_more" do

    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end

  end

end
