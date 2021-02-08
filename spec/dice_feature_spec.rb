describe "user stories" do

  # As a board game player,
  # So that I can play a game
  # I want to be able to roll a dice

  it "a user can roll a dice" do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end
end