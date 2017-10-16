class Printer

  def initialize(checker, moves)
    @checker = checker
    @moves = moves
  end

  def print
    if @checker.winning_combo?
      p "Player #{@moves.list.last[1]} has won!"
    elsif !@checker.board.include?('')
      p "The board is full - GAME OVER"
    else
      p "No body has won yet - Keep playing!"
    end
  end
end
