class Item < ActiveRecord::Base
  attr_accessible :desc, :name, :system_id
  serialize :vars, Hash
  belongs_to :system
  has_many :abilities, :through => :item_ability
  has_many :characters, :through => :character_items
end
