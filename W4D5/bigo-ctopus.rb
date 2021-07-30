class Octopus

    FISHIES = [
        'fish', 
        'fiiish', 
        'fiiiiish', 
        'fiiiish', 
        'fffish', 
        'ffiiiiisshh', 
        'fsh', 
        'fiiiissshhhhhh']

    def self.sluggish_octopus
        
    end

    def self.dominant_octopus

    end

    def self.clever_octopus
        longest_fish = FISHIES[0]
        FISHIES.each_with_index { |fish,i| longest_fish = FISHIES[i] if fish.length > longest_fish.length }
        longest_fish
    end

end

p Octopus.clever_octopus