class Log < ActiveRecord::Base
  attr_accessible :entry, :owner_id, :owner_type
end
