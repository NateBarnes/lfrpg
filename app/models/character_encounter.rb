class CharacterEncounter < ActiveRecord::Base
  attr_accessible :character_id, :encounter_id, :vars
  serialize :vars, Hash
end
