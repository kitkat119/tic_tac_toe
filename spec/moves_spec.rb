# describe Moves do
#   subject(:moves) { described_class.new }
#
#   let(:player_1) { double :player, weapon: 'X' }
#   let(:index) { 8 }
#
#   it "starts with an empty array" do
#     expect(moves.list).to eq []
#   end
#
#   it "adds each move to the list" do
#     moves.add_move_to_list(player_1, player_1.weapon, index)
#     expect(moves.list).to include([player_1, "X", 8])
#   end
#
# end
