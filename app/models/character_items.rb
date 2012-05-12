class CharacterItems < ActiveRecord::Base
  attr_accessible :active, :character_id, :item_id
  serialize :vars, Hash
  belongs_to :characters
  belongs_to :items
end
