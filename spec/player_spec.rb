describe Player do
  subject(:player) { described_class.new(name) }

  let(:name) {"X"}

  it "gives the player a name of X or O" do
    expect(player.name).to eq(name)
  end
end
