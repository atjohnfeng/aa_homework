class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    while !game_over
      if require_sequence
        round_success_message
        self.sequence_length += 1
      else
        game_over_message
      end
    end
  end

  def show_sequence
    add_random_color
    puts seq
  end

  def require_sequence
    false
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts 'Round Success. Difficulty increasing!'
    game_over = true
  end

  def game_over_message
    puts 'Round Failed. Game Over.'
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
