class CharacterEncounter < ActiveRecord::Base
  attr_accessible :character_id, :encounter_id, :vars
  serialize :vars, Hash
  belongs_to :characters
  belongs_to :encounters
end
