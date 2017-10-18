class Printer

  def initialize(checker, moves)
    @checker = checker
    @moves = moves
  end

  def print
    if @checker.winning_combo?
      puts "Player #{@moves.list.last[1]} has won!"
    elsif !@checker.board.include?('')
      puts "The board is full - GAME OVER"
    else
      puts "No body has won yet - Keep playing!"
    end
  end
end
