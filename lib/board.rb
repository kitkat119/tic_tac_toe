class Board

attr_reader :state

  def initialize
    @state = ["", "", "",
              "", "", "",
               "", "", ""]
  end

  def update(player, index)
    player.weapon == "X" ? @state[index] = "X" : @state[index] = "O"
  end
end
