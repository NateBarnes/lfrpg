class System < ActiveRecord::Base
  attr_accessible :desc, :klass, :name, :vars
  serialize :vars, Hash
end
