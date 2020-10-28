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

Logic defines board attributes
class Board
  attr_accessor :states
  def initialize(states)
    @states = states
  end

  def initial_board
    puts ' 1 | 2 | 3'
    puts '-----------'
    puts ' 4 | 5 | 6 '
    puts '-----------'
    puts ' 7 | 8 | 9 '
  end
end

# Logic defines players attributes
class Players
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
