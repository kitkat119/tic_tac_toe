class Checker

  def initialize(board)
    @board = board
  end

  def winning_combo?
    @board[0] && @board[1] == @board[2] ||
    @board[3] && @board[4] == @board[5] ||
    @board[6] && @board[7] == @board[8] ||
    @board[0] && @board[4] == @board[8] ||
    @board[6] && @board[4] == @board[2] ||
    @board[0] && @board[3] == @board[6] ||
    @board[1] && @board[4] == @board[7] ||
    @board[2] && @board[5] == @board[8]
  end
end
