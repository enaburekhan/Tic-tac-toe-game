# spec/tic-tac-toe_spec.rb
require_relative '../lib/main.rb'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

describe Player.new('khalil', 'X') do
  it { is_expected.to have_attributes(name: 'khalil') }
  it { is_expected.to have_attributes(token: 'X') }

  it { is_expected.not_to have_attributes(name: 'jyoti') }
  it { is_expected.not_to have_attributes(token: 'O') }
end

describe Board do
  game_board = Board.new
  empty_board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ]

  it 'Expected to have an empty attribute named board' do
    expect(game_board.board).to eql(empty_board)
  end

  describe '#get_position' do
    test_board = Board.new
    board1 = [
      %w[O X O],
      %w[O X O],
      [' ', 'O', ' ']
    ]
    it 'Return the content in the position given of the game board' do
      expect(game_board.get_position(1)).to eql(game_board.board[0][0])
    end
    test_board.board = board1
    it 'Verfiying the content in the position given of the game board' do
      expect(test_board.get_position(2)).not_to eql(game_board.board[0][0])
    end
  end

  describe '#update_position' do
    game_board1 = Board.new
    test_board1 = [
      [' ', ' ', ' '],
      [' ', ' ', 'X'],
      [' ', ' ', ' ']
    ]
    it 'Should update the board with the given token and position' do
      expect(game_board1.update_position(6, 'X')).to eql(test_board1)
    end

    it 'Should not update the board with the given token when the position is not in the range of 1..9' do
      expect(game_board1.update_position(14, 'X')).to eql(test_board1)
    end
  end

  describe '#test_win' do
    game_board2 = Board.new
    game_board2.board = [
      %w[X X O],
      %w[O O X],
      ['O', ' ', 'O']
    ]

    it "Returns true if there's a win combination" do
      expect(game_board2.test_win('O')).to eql(true)
    end

    it "Returns false if there's no win combination" do
      expect(game_board2.test_win('X')).to eql(false)
    end
  end
end