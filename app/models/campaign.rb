class Campaign < ActiveRecord::Base
  attr_accessible :desc, :name, :system_id, :user_id, :vars
  serialize :vars, Hash
  belongs_to :users
  has_many :encounters
  belongs_to :systems
end
