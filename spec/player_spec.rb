describe Player do
  subject(:player) { described_class.new(weapon) }

  let(:weapon) {"X"}

  it "gives the player a weapon of X or O" do
    expect(player.weapon).to eq(weapon)
  end
end
