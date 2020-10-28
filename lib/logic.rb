# logic defines player's winning position
class Logic
  attr_reader :player_position
  def initialize(player_position)
    @player_position = player_position
  end
  
  def winning_position?
    arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] 
    arr.any? do |combination|
      return true if combination.all? { |element| @player_position.include?(element) }
    end
    false    
  end 
end

# logic defines player's position on the board
class Position
  attr_accessor :choice, :board
  def initialize(choice, board)
    @choice = choice
    @board  = board
  end  
  
  def inside
    @board.include?(@choice)
  end
end

# defines array operation
class ArrayOperation
  def initialize(arr, pos)
    @arr = arr
    @pos = pos
  end

  def delete_arr
    @arr.delete(@pos)
  end
end


