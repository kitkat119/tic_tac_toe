class Board

attr_reader :state

  def initialize
    @state = ["", "", "", "", "", "", "", "", ""]
  end

  def update(index, weapon)
    weapon == "X" ? @state[index] = "X" : @state[index] = "O"
  end
end
