describe Checker do
  subject(:checker) { described_class.new(board) }

  let(:board) { ["X", "X", "X", "O", "O", "X", "X", "O", "O"] }

  it "checks for a winning combination" do
    expect(checker.winning_combo?).to eq true
  end

end
