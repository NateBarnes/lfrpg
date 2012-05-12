class Character < ActiveRecord::Base
  attr_accessible :active, :bio, :campaign_id, :name, :user_id, :vars
  serialize :vars, Hash
end
