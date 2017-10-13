describe Game do
  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player, weapon: "X" }
  let(:player_2) { double :player, weapon: "O" }

  it "starts with two players" do
    expect(game.players.length).to eq(2)
  end

  it "has a player 1" do
    expect(game.player_1).to eq(player_1)
  end

  it "has a player 2" do
    expect(game.player_2).to eq(player_2)
  end

  it "starts with player 1's turn" do
    expect(game.current_turn).to eq(player_1)
  end

  it "switches player turns" do
    game.switch_turns
    expect(game.current_turn).to eq(player_2)
  end

end
