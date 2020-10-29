# frozen_string_literal: true

# Logic defines board attributes
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
