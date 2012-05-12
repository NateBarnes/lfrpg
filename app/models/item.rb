class Item < ActiveRecord::Base
  attr_accessible :desc, :name, :system_id
  serialize :vars, Hash
end
