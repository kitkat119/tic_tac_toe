class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2, board_class = Board)
    @players = [player_1, player_2]
    @current_turn = player_1
    @board = board_class.new
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private
  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end
end
