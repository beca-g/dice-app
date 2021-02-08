require "dice"

describe Dice do
  subject(:dice) { described_class.new }
  describe "#roll" do
    it "generates a dice roll" do
      expect(dice).to receive(:roll)
      dice.roll(1)
    end

    it "a dice roll generates a number between 1 and 6" do
      dice_roll = dice.roll(2)
      expect(dice_roll).to be_between 1, 6
    end

    it "any number of dice can be rolled at the same time" do
      dice.roll(2)
      expect(dice.rolls.length).to eq 2
    end
  end

  describe "#roll_sum" do
    it "generates the current score" do
      srand(4)
      dice.roll(2)
      dice.roll(2)
      expect(dice.roll_sum).to eq 12
    end
  end
end