describe Checker do
  subject(:checker) { described_class.new(board, current_weapon) }
  subject(:checker2) { described_class.new(board2, current_weapon) }
  subject(:checker3) { described_class.new(board3, current_weapon) }
  subject(:checker4) { described_class.new(board4, current_weapon) }
  subject(:checker5) { described_class.new(board5, current_weapon) }
  subject(:checker6) { described_class.new(board6, current_weapon) }
  subject(:checker7) { described_class.new(board7, current_weapon) }
  subject(:checker8) { described_class.new(board8, current_weapon) }

  subject(:checker9) { described_class.new(board9, current_weapon2) }

  let(:board) { double :board, state: %w[O O O X X O X O X] }
  let(:board2) { double :board, state: %w[X X O O O O X O X] }
  let(:board3) { double :board, state: %w[O X X X X O O O O] }
  let(:board4) { double :board, state: %w[O X O O O X X X O] }
  let(:board5) { double :board, state: %w[X X O O O X O X O] }
  let(:board6) { double :board, state: %w[O X X O X O O O X] }
  let(:board7) { double :board, state: %w[O O X X O X X O O] }
  let(:board8) { double :board, state: %w[X O O O X O X X O] }
  let(:board9) { double :board, state: %w[O X O X O X X O ""] }
  let(:current_weapon) { "O" }
  let(:current_weapon2) { "X" }

  it 'checks for a winning combination' do
    expect(checker.winning_combo?).to eq true
  end

  it 'checks for a second winning combination' do
    expect(checker2.winning_combo?).to eq true
  end

  it 'checks for a third winning combination' do
    expect(checker3.winning_combo?).to eq true
  end

  it 'checks for a fourth winning combination' do
    expect(checker4.winning_combo?).to eq true
  end

  it 'checks for a fifth winning combination' do
    expect(checker5.winning_combo?).to eq true
  end

  it 'checks for a sixth winning combination' do
    expect(checker6.winning_combo?).to eq true
  end

  it 'checks for a seventh winning combination' do
    expect(checker7.winning_combo?).to eq true
  end

  it 'checks for an eigth winning combination' do
    expect(checker8.winning_combo?).to eq true
  end

  it 'continues the game if no one has won yet' do
    expect(checker9.winning_combo?).to eq false
  end
end
