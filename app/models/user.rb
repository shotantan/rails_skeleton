class User < ActiveRecord::Base
  has_and_belongs_to_many :roles, :limit=>1
  has_and_belongs_to_many :sensors
  has_and_belongs_to_many :mailenables
  
  def has_role?(name)
    self.roles.where(name: name).length > 0
  end

  def has_sensor?(mac)
    self.sensors.where(mac_address: mac).length > 0
  end
  
  def name
    email
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end