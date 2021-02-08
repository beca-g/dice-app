describe "user stories" do

  # As a board game player,
  # So that I can play a game
  # I want to be able to roll a dice

  it "a user can roll a dice" do
    dice = Dice.new
    expect(dice).to respond_to(:roll)
  end

  # As a board game player,
  # So that I know how many steps I should move
  # Rolling a dice should give me a number between 1 and 6

  # As a dice app developer,
  # So that I give players a good game experience
  # If it is not already random, I want the dice roll to be randomly picked

  it "a dice roll generates a random number between 1-6" do
    dice = Dice.new
    dice_roll = dice.roll
    expect(dice_roll).to be_between 1, 6
  end

end