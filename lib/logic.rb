# winning_comb = [
#  [1, 2, 3], 
#  [4, 5, 6], 
#  [7, 8, 9], 
#  [3, 5, 7], 
#  [1, 5, 9], 
#  [1, 4, 7], 
#  [2, 5, 8], 
#  [3, 6, 9]
# ]

# class Logic
#   def game_board(board_states) 
#     states = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [3, 5, 7], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9]]
#     if states.include?(board1)
#       board1.each { |state| board_states[state - 1] = 'X' }
#     #   puts "#{player1} win"
#     # # break
#     end
#   end
  
#    def game_board(board_states)
#      states = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [3, 5, 7], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9]]
#      unless states.include?(board2)     
#         board2.each { |state| board_states[state - 1] = 'X' }
#         # puts "#{player2} win"
#      end
#     #  break
#    end

# end

# logic class
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

# class position
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

class ArrayOperation
  def initialize(arr, pos)
    @arr = arr
    @pos = pos
  end
  
  def delete_arr
    @arr.delete(@pos)
  end
end


