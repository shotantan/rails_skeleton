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
u = User.create(email: 'shota.nakano.work@gmail.com', password: 'i/XfN8a8LDaM3ay2/ce8', password_confirmation: 'i/XfN8a8LDaM3ay2/ce8')
u.roles << Role.find_by_name("superadmin")