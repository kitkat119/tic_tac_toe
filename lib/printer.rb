class Printer
attr_reader :checker
  def initialize(checker)
    @checker = checker
  end

  def print
    if @checker.winning_combo?
      puts "Player #{@checker.current_weapon} has won!"
    elsif !@checker.board.include?('')
      puts "The board is full - GAME OVER"
    else
      puts "No body has won yet - Keep playing!"
    end
  end
end
