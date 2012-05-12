class ItemAbility < ActiveRecord::Base
  attr_accessible :ability_id, :item_id
  belongs_to :abilities
  belongs_to :items
end
