class Observation < ActiveRecord::Base
  has_and_belongs_to_many :sensors
end
