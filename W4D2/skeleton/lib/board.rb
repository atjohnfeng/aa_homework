class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player_1 = name1
    @player_2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    (0..12).each do |i|
      4.times { @cups[i] << :stone } if i != 6
    end
  end

  def valid_move?(start_pos)
    valid = [0,1,2,3,4,5,7,8,9,10,11,12]
    raise 'Invalid starting cup' if !valid.include?(start_pos)
    raise 'Starting cup is empty' if @cups[start_pos].empty?
    return true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)
      stone_count = @cups[start_pos].length
      @cups[start_pos] = []
      ending_cup_idx = start_pos
    end
    
    ending_cup_idx = start_pos
    until stone_count == 0
      ending_cup_idx += 1
      ending_cup_idx = 0 if ending_cup_idx >= 14
      if ending_cup_idx == 6 && current_player_name == @player_1
        @cups[ending_cup_idx] << :stone
        stone_count -= 1
      elsif ending_cup_idx == 6 && current_player_name == @player_2
        stone_count += 1
      elsif ending_cup_idx == 13 && current_player_name == @player_2
        @cups[ending_cup_idx] << :stone
        stone_count -= 1
      elsif ending_cup_idx == 13 && current_player_name == @player_1
        stone_count += 1
      else
        @cups[ending_cup_idx] << :stone
        stone_count -= 1
      end
    end
    next_turn(ending_cup_idx)
    render
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].length == 1
      return :switch
    end
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[1..6].all? { |cup| cup.count == 0 } || @cups[7..12].all? { |cup| cup.count == 0 }
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    if @cups[6].length > @cups[13].length
      return @player_1
    else
      return @player_2
    end
  end
end
