class Campaign < ActiveRecord::Base
  attr_accessible :desc, :name, :system_id, :user_id, :vars
  serialize :vars, Hash
end
