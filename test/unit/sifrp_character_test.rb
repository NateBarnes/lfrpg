require 'test_helper'

class SIFRPCharacterTest < ActiveSupport::TestCase
  ABILITIES = [:agility, :animal_handling, :athletics, :awareness, :endurance, :fighting, :marksmanship, :status, :will, :all_others]

  def test_generate
    char = SIFRPCharacter.generate
    ABILITIES.each do |ability|
      assert_equal char.send(ability), 2
    end
    assert_equal char.exp, 210
    assert_equal char.destiny, 1
  end
end
