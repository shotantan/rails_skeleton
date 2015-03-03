class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :sensors
  
  def has_role?(name)
    self.roles.where(name: name).length > 0
  end

  def has_sensor?(mac)
    self.sensors.where(mac: mac).length > 0
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
