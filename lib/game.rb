def game_board(board_states)
  puts " #{board_states[0]} | #{board_states[1]} | #{board_states[2]} "
  puts '-----------'
  puts " #{board_states[3]} | #{board_states[4]} | #{board_states[5]} "
  puts '-----------'
  puts " #{board_states[6]} | #{board_states[7]} | #{board_states[8]} "
end

# logic defines how to play the game
class Game
  attr_accessor :choice, :board
  attr_reader :player_position
  def initialize(choice, board, player_position)
    @choice = choice
    @board = board
    @player_position = player_position
  end

  def draw?(board)
    if !won?(board) && full?(board)
      true
    elsif full?(board) && !won?(board)
      false
    elsif won?(board)
      false
    end
  end

  def inside
    @board.include?(@choice)
  end  
end
