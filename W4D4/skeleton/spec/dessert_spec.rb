require 'rspec'
require 'dessert'

describe Dessert do

  subject(:dessert) { Dessert.new('Ice Cream', 1, 'chef') }
  let(:chef) { double("chef") }

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

  # describe "#add_ingredient" do

  #   it "adds an ingredient to the ingredients array" do
    
  #   end

  # end

  # describe "#mix!" do
  #   it "shuffles the ingredient array"
  # end

  # describe "#eat" do
  #   it "subtracts an amount from the quantity"

  #   it "raises an error if the amount is greater than the quantity"
  # end

  # describe "#serve" do
  #   it "contains the titleized version of the chef's name"
  # end

  # describe "#make_more" do
  #   it "calls bake on the dessert's chef with the dessert passed in"
  # end

end
