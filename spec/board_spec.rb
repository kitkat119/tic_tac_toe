describe Board do
  subject(:board) { described_class.new }

  let(:state) { ["", "", "", "", "", "", "", "", ""] }

  it "has 9 possible cells" do
    expect(board.state).to eq(state)
  end
end
