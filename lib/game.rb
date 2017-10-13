class Game

  attr_reader :players, :current_turn, :board

  def initialize(player_1, player_2, board)
    @players = [player_1, player_2]
    @current_turn = player_1
    @board = board
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def make_move(current_turn, index)
    @board.update(current_turn, index)
    game_over?
  end

  private
  def game_over?
    !@board.state.include?("") ? "The board is full - GAME OVER" : switch_turns
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end
end
