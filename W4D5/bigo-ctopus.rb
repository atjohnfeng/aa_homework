# Big O-ctopus Homework

#Quadratic
def sluggish_octopus(fishies)
    sorted = false
    while !sorted
        sorted = true
        (0...fishies.length-1).each do |i|
            if fishies[i].length > fishies[i+1].length
                fishies[i], fishies[i+1] = fishies[i+1], fishies[i]
                sorted = false
            end
        end
    end
    fishies[-1]
end

#Log Linear
def dominant_octopus(fishies)
    return fishies if fishies.length <= 1
    pivot_fishie = fishies.first
    left_school = fishies[1..-1].select { |fish| fish.length < pivot_fishie.length }
    right_school = fishies[1..-1].select { |fish| fish.length >= pivot_fishie.length }
    dominant_octopus(left_school) + [pivot_fishie] + dominant_octopus(right_school)
end

#Linear
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
        'fiiiissshhhhhh',
    ]

p sluggish_octopus(fishies)
p dominant_octopus(fishies)[-1]
p clever_octopus(fishies)

#Linear
def slow_dance(direction, tiles_array)
    tiles_array.each { |move| return tiles_array.index(move) if move == direction }
end

#Constant
def fast_dance(direction, tiles_structure)
    return tiles_structure[direction]
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

new_tiles_data_structure = { 
    "up" => 0, 
    "right-up" => 1, 
    "right" => 2, 
    "right-down" => 3, 
    "down" => 4, 
    "left-down" => 5, 
    "left" => 6,  
    "left-up" => 7
}

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)