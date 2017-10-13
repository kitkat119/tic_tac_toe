describe Board do
  subject(:board) { described_class.new }

  let(:state) { ["", "", "", "", "", "", "", "", ""] }
  let(:index) { 1 }
  let(:weapon) { "X" }

  it "has 9 possible cells" do
    expect(board.state).to eq(state)
  end

  it "takes the player's move and updates the board" do
    board.update(index, weapon)
    expect(board.state).to include("X")
  end
end