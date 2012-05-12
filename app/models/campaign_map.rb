class CampaignMap < ActiveRecord::Base
  attr_accessible :campaign_id, :map_id
  has_many :campaigns
  has_many :maps
end
