describe Game do
  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player, name: "X" }
  let(:player_2) { double :player, name: "O" }

  it "starts with two players" do
    expect(game.player_1).to eq(player_1)
  end
end
