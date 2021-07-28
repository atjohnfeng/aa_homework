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
    if play_again
      play
    end
  end

  def play_again
    puts "PLAY AGAIN, HUMAN? [Y/N]"
    play_again = gets.chomp
    return true if play_again == 'y' || play_again == 'Y'
    false
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    system("clear")
    add_random_color
    @seq.each do |color|
      puts color.upcase
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    puts 'REPEAT THE SEQUENCE HUMAN. [R/B/G/Y]'
    @seq.each do |color|
      user_input = gets.chomp
      if color[0] != user_input.downcase
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts 'GOOD JOB HUMAN. YOUR EXTERMINATION HAS BEEN DELAYED ANOTHER ROUND.'
  end

  def game_over_message
    puts "PREPARE FOR EXTERMINATION. YOU SURVIVED #{@sequence_length-1} ROUNDS."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

end

start_game = Simon.new
start_game.play