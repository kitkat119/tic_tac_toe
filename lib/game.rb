class Game
  attr_reader :players, :current_turn, :board, :moves

  def initialize(player_1, player_2, board, checker_class = Checker, printer_class = Printer)
    @players = [player_1, player_2]
    @current_turn = player_1
    @board = board
    @checker = checker_class
    @printer = printer_class
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def make_move(current_turn, index)
    @board.update(current_turn, index)
    # @moves.add_move_to_list(current_turn, current_turn.weapon, index)
    @printer.new(@checker.new(@board, current_turn.weapon)).print
    switch_turns
  end

  private

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end
end
