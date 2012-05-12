class Character < ActiveRecord::Base
  attr_accessible :active, :bio, :campaign_id, :name, :user_id, :vars
  serialize :vars, Hash
  has_many :items,  :through => :character_items
  has_many :encounters, :through => :character_encounter
  has_many :ability, :through => :character_ability
  belongs_to :user
end
