class System < ActiveRecord::Base
  attr_accessible :desc, :klass, :name, :vars
  serialize :vars, Hash
  has_many :characters
  has_many :campaigns
  has_many :abilities
  has_many :items
  has_many :maps
end
