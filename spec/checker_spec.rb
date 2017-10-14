describe Checker do
  subject(:checker) { described_class.new(board) }
  subject(:checker2) { described_class.new(board2) }

  let(:board) { double :board, state: %w[X X X O O X X O O] }
  let(:board2) { double :board, state: %w[O X O X O X X O X] }

  it 'checks for a winning combination' do
    expect(checker.winning_combo).to eq 'Player X has won!'
  end

  it 'continues the game if no one has won yet' do
    expect(checker2.winning_combo).to eq 'No body has won yet - Keep playing!'
  end
end
