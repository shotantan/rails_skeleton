# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Role.create(name: 'admin')
Role.create(name: 'superadmin')
Role.create(name: 'general')
s = Sensor.create(name: 'test pc', mac_address: '60:c5:47:02:79:8e')
Mailenable.create(name: 'send_enable')
Mailenable.create(name: 'send_disable')
Setting.create(tag: 'default_server', value: 'fierce-atoll-6200.herokuapp.com')
Setting.create(tag: 'server', value: 'rs.dev')
Observation.create(battery: 5.0, door: 'open')
u = User.create(email: 'mbed.sensor@gmail.com', password: 'i/XfN8a8LDaM3ay2/ce8', password_confirmation: 'i/XfN8a8LDaM3ay2/ce8')
u.roles << Role.find_by_name("superadmin")
u.sensors << Sensor.where(:mac_address => "60:c5:47:02:79:8e")
u.mailenables << Mailenable.where(:name => 'send_enable')
s.settings << Setting.where(:tag => "default_server")
s.settings << Setting.where(:tag => "server")
s.observations << Observation.where(:id => 1)