# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

user_1 = User.create(first_name: 'John', last_name: 'Smith', username: 'johnsmith', email: 'john.smith@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet', created_at: Time.now, last_sign_in_at: Time.now, is_artist: false)