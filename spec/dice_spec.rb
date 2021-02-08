require "dice"

describe Dice do
  subject(:dice) { described_class.new }
  describe "#roll" do
    it "generates a dice roll" do
      expect(dice).to receive(:roll)
      dice.roll
    end
  end
end