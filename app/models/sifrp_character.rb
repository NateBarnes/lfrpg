class SIFRPCharacter < Character
  ABILITIES = [:agility, :animal_handling, :athletics, :awareness, :endurance, :fighting, :marksmanship, :status, :will, :all_others]
  QUALITIES = [:exp, :destiny]
  initialize_vars ABILITIES+QUALITIES

  def self.generate
    char = create
    char.generate
  end

  def generate
    ABILITIES.each { |ability| vars[ability] = 2 }
    vars[:exp] = 210
    vars[:destiny] = 1

    self
  end
end
