# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'bulla_bhai@gmail.com', password: 'bullabhai', password_confirmation: 'bullabhai')

Supervisor.create!(email: 'babu_bhai@gmail.com', password: 'babubhai', password_confirmation: 'babubhai')
Supervisor.create!(email: 'dj_khaled@gmail.com', password: 'djdjdj', password_confirmation: 'djdjdj')

Guard.create!(email: "billo_rani@gmail.com", password: 'billobillo', password_confirmation: 'billobillo', supervisor_id: 1)
Guard.create!(email: "billo_da_peo@gmail.com", password: 'peopeopeo', password_confirmation: 'peopeopeo', supervisor_id: 2)
