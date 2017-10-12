class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1 = Player.new("X"), player_2 = Player.new("O"))
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private
  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end
end
