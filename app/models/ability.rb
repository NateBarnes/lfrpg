class Ability < ActiveRecord::Base
  attr_accessible :arguments, :category, :name, :system_id
  serialize :arguments, Hash
  belongs_to :systems
  belongs_to :characters, :through => :character_ability
  belongs_to :items, :through => :item_ability
  
end
