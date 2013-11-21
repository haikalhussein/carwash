# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => "q7admin", :email => "qse7en@email.com", :password => "password123", :password_confirmation => "password123"
puts 'user: ' << user.name
user.add_role :admin
user2 = User.find_or_create_by_email :name => 'q7counter', :email => 'qse7encount@email.com', :password => 'password', :password_confirmation => 'password'
puts 'user: ' << user2.name
user2.add_role :counter