class Ability < ActiveRecord::Base
  attr_accessible :arguments, :category, :name, :system_id
  serialize :arguments, Hash
  belongs_to :systems
  has_many :characters, :through => :character_ability
  has_many :items, :through => :item_ability
  
end
