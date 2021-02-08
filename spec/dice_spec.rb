require "dice"

describe Dice do
  subject(:dice) { described_class.new }
  describe "#roll" do
    it "generates a dice roll" do
      expect(dice).to receive(:roll)
      dice.roll
    end

    it "a dice roll generates a number between 1 and 6" do
      dice_roll = dice.roll
      expect(dice_roll).to be_between 1, 6
    end
  end
end