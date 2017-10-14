class Board
  attr_reader :state

  def initialize
    @state = ['', '', '',
              '', '', '',
              '', '', '']
  end

  def update(player, index)
    raise('Try again!') if @state[index] != ''
    @state[index] = player.weapon == 'X' ? 'X' : 'O'
  end
end
