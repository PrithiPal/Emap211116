# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'bulla_bhai@gmail.com', password: 'bullabhai', password_confirmation: 'bullabhai')

Supervisor.create!(email: 'supervisor@gmail.com', password: 'supervisor', password_confirmation: 'supervisor')


Guard.create!(email: "guard@gmail.com", password: 'guards', password_confirmation: 'guards')

