# Big O-ctopus Homework

def sluggish_octopus(fishies)
    sorted = false
    while !sorted
        sorted = true
        fishies
    end
end

def dominant_octopus(fishies)

end

def clever_octopus(fishies)
    longest_fish = fishies[0]
    fishies.each_with_index { |fish,i| longest_fish = fishies[i] if fish.length > longest_fish.length }
    longest_fish
end

fishies = [
        'fish', 
        'fiiish', 
        'fiiiiish', 
        'fiiiish', 
        'fffish', 
        'ffiiiiisshh', 
        'fsh', 
        'fiiiissshhhhhh']

p clever_octopus(fishies)