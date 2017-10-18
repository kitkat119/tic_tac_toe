class Checker

  attr_reader :board, :current_weapon

  def initialize(board, current_weapon)
    @board = board.state
    @current_weapon = current_weapon
  end

  def winning_combo?
    @board[0] == "#{@current_weapon}" && @board[1] == "#{@current_weapon}" && @board[2] == "#{@current_weapon}" ||
    @board[3] == "#{@current_weapon}" && @board[4] == "#{@current_weapon}" && @board[5] == "#{@current_weapon}" ||
    @board[6] == "#{@current_weapon}" && @board[7] == "#{@current_weapon}" && @board[8] == "#{@current_weapon}" ||
    @board[0] == "#{@current_weapon}" && @board[4] == "#{@current_weapon}" && @board[8] == "#{@current_weapon}" ||
    @board[6] == "#{@current_weapon}" && @board[4] == "#{@current_weapon}" && @board[2] == "#{@current_weapon}" ||
    @board[0] == "#{@current_weapon}" && @board[3] == "#{@current_weapon}" && @board[6] == "#{@current_weapon}" ||
    @board[1] == "#{@current_weapon}" && @board[4] == "#{@current_weapon}" && @board[7] == "#{@current_weapon}" ||
    @board[2] == "#{@current_weapon}" && @board[5] == "#{@current_weapon}" && @board[8] == "#{@current_weapon}"
  end
end
