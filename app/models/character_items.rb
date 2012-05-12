class CharacterItems < ActiveRecord::Base
  attr_accessible :active, :character_id, :item_id
  serialize :vars, Hash
end
