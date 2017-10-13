describe Board do
  subject(:board) { described_class.new }

  let(:state) { ["", "", "", "", "", "", "", "", ""] }
  let(:index) { 1 }
  let(:weapon) { "X" }
  let(:player_1) { double :player, weapon: "X" }

  it "has 9 possible cells" do
    expect(board.state).to eq(state)
  end

  it "takes the player's move and updates the board" do
    board.update(player_1, index, weapon)
    expect(board.state).to include("X")
  end
end
