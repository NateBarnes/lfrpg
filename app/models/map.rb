class Map < ActiveRecord::Base
  attr_accessible :length, :name, :system_id, :width
  belongs_to :systems
  belongs_to :encounters
end
