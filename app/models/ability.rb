class Ability < ActiveRecord::Base
  attr_accessible :arguments, :category, :name, :system_id
end
