class Checker
  def initialize(board)
    @board = board.state
  end

  def winning_combo
    return "Player #{@board[0]} has won!" if @board[0] == @board[1] && @board[0] == @board[2] && @board[1] == @board[2]
    return "Player #{@board[3]} has won!" if @board[3] == @board[4] && @board[3] == @board[5] && @board[4] == @board[5]
    return "Player #{@board[6]} has won!" if @board[6] == @board[7] && @board[6] == @board[8] && @board[7] == @board[8]
    return "Player #{@board[0]} has won!" if @board[0] == @board[4] && @board[0] == @board[8] && @board[4] == @board[8]
    return "Player #{@board[6]} has won!" if @board[6] == @board[4] && @board[6] == @board[2] && @board[4] == @board[2]
    return "Player #{@board[1]} has won!" if @board[1] == @board[4] && @board[1] == @board[7] && @board[4] == @board[7]
    return "Player #{@board[2]} has won!" if @board[2] == @board[5] && @board[2] == @board[8] && @board[5] == @board[8]
    'No body has won yet - Keep playing!'
  end
end
