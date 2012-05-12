class CharacterAbility < ActiveRecord::Base
  attr_accessible :ability_id, :active, :character_id
  has_many :abilities
  has_many :characters
end
