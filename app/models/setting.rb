class Setting < ActiveRecord::Base
  has_and_belongs_to_many :sensors
  
  def name
    "#{tag}: #{value}"
  end
end
