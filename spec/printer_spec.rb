describe Printer do
  subject(:printer) { described_class.new(checker) }
  subject(:printer2) { described_class.new(checker2) }
  subject(:printer3) { described_class.new(checker3) }

  let(:checker) { double :checker, board: %w[O O O X X O X O X], current_weapon: "O", winning_combo?: true }
  let(:checker2) { double :checker, board: %w[O X O X O X X O X], winning_combo?: false }
  let(:checker3) { double :checker, board: ["O", "X", "O", "", "", "", "", "", ""], winning_combo?: false }
  # let(:moves) { double :moves, list: [[player_1, 'X', 1]]}
  let(:player_1) { double :player }


  it "prints the winner if there is a winning combination present on the board" do
    expect { printer.print }.to output("Player #{checker.current_weapon} has won!\n").to_stdout
  end

  it "notifies that the game is over once the board is full" do
    expect { printer2.print }.to output("The board is full - GAME OVER\n").to_stdout
  end

  it "otherwise continues the game" do
    expect { printer3.print }.to output("No body has won yet - Keep playing!\n").to_stdout
  end
end
