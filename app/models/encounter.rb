class Encounter < ActiveRecord::Base
  attr_accessible :campaign_id, :map_id
  has_one :maps
  has_one :campaigns
  has_many :characters, :through => :character_encounter
end
