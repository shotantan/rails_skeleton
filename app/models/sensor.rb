class Sensor < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :settings
  has_and_belongs_to_many :observations
  
  def has_setting?(name)
    self.settings.where(name: name).length > 0
  end
end
