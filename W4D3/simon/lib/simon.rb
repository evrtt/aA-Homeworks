require 'colorize'

class Simon
  COLORS = {
    'red_1' => ["red", "#{"red".blue}"] , 
    'red_2' => ["red", "#{"red".green}"],
    'red_3' => ["red", "#{"red".yellow}"],
    'blue_1' => ["blue", "#{"blue".red}"],
    'blue_2' => ["blue", "#{"blue".green}"],
    'blue_3' => ["blue", "#{"blue".yellow}"],
    'green_1' => ["green", "#{"green".red}"],
    'green_2' => ["green", "#{"green".blue}"],
    'green_3' => ["green", "#{"green".yellow}"],
    'yellow_1' => ["yellow", "#{"yellow".green}"],
    'yellow_2' => ["yellow", "#{"yellow".red}"],
    'yellow_3' => ["yellow", "#{"yellow".blue}"],
  }

  attr_accessor :sequence_length, :game_over, :seq

  def initialize

    @seq_printer = []
    @seq_checker = []
    @game_over = false
    @sequence_length = 1

  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    sleep(2)
    system ("clear")
    if require_sequence.split(" ") == @seq_checker
      round_success_message
      @sequence_length += 1
    else
      @game_over = true
    end
  end

  def show_sequence
    add_random_color
    puts @seq_printer.join(" ")

  end

  def require_sequence
    puts 'Show me the colors!'
    input = gets.chomp
    return input
  end

  def add_random_color
    rand_col = COLORS.values.sample
    @seq_checker << rand_col[0]
    @seq_printer << rand_col[1]
  end

  def round_success_message
    puts 'you aint done lost just yet'
  end

  def game_over_message
    system ("clear")
    puts 'you'.red + " " 'do'.blue + 'ne'.yellow + " " 'lost'.green
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

play_game = Simon.new
play_game.play