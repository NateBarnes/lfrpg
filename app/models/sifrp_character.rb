class SIFRPCharacter < Character
  ABILITIES = [:agility, :animal_handling, :athletics, :awareness, :endurance, :fighting, :marksmanship, :status, :will, :all_others]
  initialize_vars ABILITIES

  def generate
    ABILITIES.each { |ability| vars[ability] = 2 }
  end
end
