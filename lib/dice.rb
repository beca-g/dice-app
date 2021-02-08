class Dice
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def roll(number_of_dice)
    number_of_dice.times do 
      rolls << rand(1..6)
    end
  end

  def roll_sum
    rolls.sum
  end
end