describe Game do
  subject(:game) { described_class.new(player_1, player_2, board) }

  let(:player_1) { double :player, weapon: 'X' }
  let(:player_2) { double :player, weapon: 'O' }
  let(:board) { double :board, state: ['X', 'O', 'O', 'O', 'X', 'X', 'X', 'O', ''] }
  let(:index) { 8 }

  it 'starts with two players' do
    expect(game.players.length).to eq 2
  end

  it 'has a player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'has a player 2' do
    expect(game.player_2).to eq player_2
  end

  it "starts with player 1's turn" do
    expect(game.current_turn).to eq player_1
  end

  it "returns the state of the game" do
    expect(board).to receive(:state)
    game.current_state
  end

  it 'lets the player make a move' do
    expect(board).to receive(:update)
    game.make_move(player_1, index)
  end

  it 'switches the current player once a move has been made' do
    allow(board).to receive(:update)
    game.make_move(player_1, index)
    expect(game.current_turn).to eq player_2
  end
end
