# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Artwork.delete_all
# Comment.delete_all
Like.delete_all
Relationship.delete_all

# USERS

## ARTISTS

artist_1 = User.create(first_name: 'Bruce', last_name: 'Wayne', username: 'brucewayne', email: 'bruce.wayne@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_2 = User.create(first_name: 'Tony', last_name: 'Stark', username: 'tonystark', email: 'tony.stark@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_3 = User.create(first_name: 'Victor', last_name: 'von Doom', username: 'victorvondoom', email: 'victor.vondoom@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_4 = User.create(first_name: 'James', last_name: 'Howlet', username: 'jameshowlet', email: 'james.howlet@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_5 = User.create(first_name: 'Silver', last_name: 'Surfer', username: 'silversurfer', email: 'silver.surfer@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_6 = User.create(first_name: 'Lucas', last_name: 'Bishop', username: 'lucasbishop', email: 'lucas.bishop@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_7 = User.create(first_name: 'Bruce', last_name: 'Banner', username: 'brucebanner', email: 'bruce.banner@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_8 = User.create(first_name: 'Max', last_name: 'Eisenhardt', username: 'maxeisenhardt', email: 'max.eisenhardt@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_9 = User.create(first_name: 'Al', last_name: 'Simmons', username: 'alsimmons', email: 'al.simmons@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)
artist_10 = User.create(first_name: 'Wade', last_name: 'Wilson', username: 'wadewilson', email: 'wade.wilson@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', created_at: Time.now, updated_at: Time.now, is_artist: true)

## FANS

user_array = []

user_1 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_2 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_3 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_4 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_5 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_6 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_7 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_8 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_9 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_10 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_11 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_12 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_13 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_14 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_15 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_16 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_17 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_18 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_19 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_20 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_21 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_22 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_23 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_24 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_25 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_26 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_27 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_28 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_29 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_30 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_31 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_32 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_33 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_34 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)
user_35 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, email: Faker::Internet.free_email, password: 'password', bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pulvinar dictum hendrerit. Cras efficitur ligula sed euismod dapibus. Pellentesque a nunc id nibh posuere varius id eget nibh. Nulla sed fermentum lectus. Pellentesque vitae nunc sollicitudin, ornare dolor ac, laoreet tortor.', is_artist: false)

user_array << user_1 << user_2 << user_3 << user_4 << user_5 << user_6 << user_7 << user_8 << user_9 << user_10 << user_11 << user_12 << user_13 << user_14 << user_15 << user_16 << user_17 << user_18 << user_19 << user_20 << user_21 << user_22 << user_23 << user_24 << user_25 << user_26 << user_27 << user_28 << user_29 << user_30 << user_31 << user_32 << user_33 << user_34 << user_35

# ARTWORKS

artwork_array = []

# Artist 1
artwork_1 = Artwork.create(
  title: 'Sed congue vulputate convallis', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_1.id, 
  lat: 51.52140550376494, 
  lng: -0.10001117968749895, 
  address: '14 Charterhouse Square, London EC1M 6AX, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/23-Street-Art-London-Street-Art-Tour.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_2 = Artwork.create(
  title: 'Mauris efficitur vel tincident', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_1.id, 
  lat: 51.528454518592255, 
  lng: -0.1202672221679677, 
  address: '106 Argyle Street, Kings Cross, London WC1H 8EB, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Cranio_issa_16.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_3 = Artwork.create(
  title: 'Sed congue vulputate', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_1.id, 
  lat: 51.49127469261474, 
  lng: -0.1518529155273427, 
  address: 'Cundy Street, Belgravia, London SW1W, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Loft-2-sml.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 2
artwork_4 = Artwork.create(
  title: 'Aliquam sit amet', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_2.id, 
  lat: 51.498969559869295, 
  lng: -0.10893757128906145, 
  address: '1 Dibdin Row, London SE1 7BS, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/London-Street-Art-photos-20.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_5 = Artwork.create(
  title: 'Sem at malesuada rhoncus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_2.id, 
  lat: 51.51606461451394, 
  lng: -0.07803852343749895, 
  address: '9 Cutler Street, London E1 7DJ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Street-Art-London-UK-TMagicworld.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_6 = Artwork.create(
  title: 'Phasellus tempus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_2.id, 
  lat: 51.53059036825408, 
  lng: -0.08902485156249895, 
  address: '1 Provost Street, London N1, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Streetart-London-uk-blog-tmagicworld-nuart-festival-1.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_7 = Artwork.create(
  title: 'Sed sed placerat mauris', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_2.id, 
  lat: 51.538278597390565, 
  lng: -0.11786396289062395, 
  address: '21 Cowdenbeath Path, London N1 0LE, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/article-2354486-1A9EC6EE000005DC-226_964x658.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_8 = Artwork.create(
  title: 'Justo euismod sit', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_2.id, 
  lat: 51.49790090598308, 
  lng: -0.12747699999999895, 
  address: '16 Great College Street, Westminster, London SW1P 3RX, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_6281bfe517bc3503f96f464fad1d1537.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_9 = Artwork.create(
  title: 'Vitae luctus justo', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_2.id, 
  lat: 51.516491908702456, 
  lng: -0.1628392436523427, 
  address: '23 Brown Street, Marylebone, London W1H 5YY, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_93d11cfde35a1c6113894a572f02e8d1.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 3
artwork_10 = Artwork.create(
  title: 'Suspendisse faucibus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.49319853120729, 
  lng: -0.15150959277343645, 
  address: '17A Gerald Road, Belgravia, London SW1W 9EH, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_a0c020d2e5f21519fefd8a8bd650fbf9.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_11 = Artwork.create(
  title: 'Luctus justo euismod', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.5019616574509, 
  lng: -0.0845616557617177, 
  address: '38A Snowsfields, London SE1 3SU, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_a8e86535750520d540353c2ff507aa37.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_12 = Artwork.create(
  title: 'Vel aliquet', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.51926922322187, 
  lng: -0.0845616557617177, 
  address: '3 Finsbury Avenue, London EC2M, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_a8e86535750520d540353c2ff507aa37.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_13 = Artwork.create(
  title: 'Bibendum tellus at', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.52183274784855, 
  lng: -0.09726459765624895, 
  address: '3-5 Goswell Road, London EC1M 7AH, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_dcf01cbf8d4ce7a9937ddeda6e3ae710.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_14 = Artwork.create(
  title: 'Bibendum tellus at', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.484006125224354, 
  lng: -0.10619098925781145, 
  address: '30-31 Royal Road, London SE17, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/brooklyn-street-art-roa-jaime-rojo-atlanta-12-13-web-6.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_15 = Artwork.create(
  title: 'Cursus leo', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.488495671315434, 
  lng: -0.13709003710937395, 
  address: '30 Lupus Street, Pimlico, London SW1V 3DZ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/fauxreel_joe_1000.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_16 = Artwork.create(
  title: 'Euismod fermentum', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_3.id, 
  lat: 51.51435539767495, 
  lng: -0.1106541850585927, 
  address: 'Cliffords Inn, London WC2A 1PR, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/getxophoto_showcase-550x365.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 4
artwork_17 = Artwork.create(
  title: 'Aliquet lacus mauris vel', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_4.id, 
  lat: 51.50217537118989, 
  lng: -0.1031010844726552, 
  address: '8-20 Pocock Street, London SE1 0BW, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/london-street-art-tour-daniel-rolnik-insa-ungnilish-broken-fingaz-sunglasses-mustache.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_18 = Artwork.create(
  title: 'Ut sollicitudin', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_4.id, 
  lat: 51.53422108272045, 
  lng: -0.0701421000976552, 
  address: '86 Queensbridge Road, London E2 8PA, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/pure-evil-ring-thief.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 5
artwork_19 = Artwork.create(
  title: 'Nunc molestie finibus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_5.id, 
  lat: 51.51756012663668, 
  lng: -0.1614659526367177, 
  address: '34 Bryanston Square, Marylebone, London W1H 2DY, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/street-art-east-london.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_20 = Artwork.create(
  title: 'Justo euismod sit', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_5.id, 
  lat: 51.519696487347204, 
  lng: -0.06911213183593645, 
  address: '9 Hanbury Street, London E1 5JJ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/23-Street-Art-London-Street-Art-Tour.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_21 = Artwork.create(
  title: 'Auctor tristique', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_5.id, 
  lat: 51.51691919888248, 
  lng: -0.0653355815429677, 
  address: '42 Fieldgate Street, London E1 1ES, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Cranio_issa_16.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_22 = Artwork.create(
  title: 'Suscipit purus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_5.id, 
  lat: 51.53486176697859, 
  lng: -0.08696491503906145, 
  address: '68 Bridport Place, London N1 5DS, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Cranio_issa_16.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 6
artwork_23 = Artwork.create(
  title: 'Nunc molestie finibus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_6.id, 
  lat: 51.51756012663668, 
  lng: -0.1614659526367177, 
  address: '36 King Street, London EC2V 8BB, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/street-art-east-london.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_24 = Artwork.create(
  title: 'Tristique non', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_6.id, 
  lat: 51.5378515076164, 
  lng: -0.0598424174804677, 
  address: '63 Westgate Street, London E8 3RL, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Loft-2-sml.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 7
artwork_25 = Artwork.create(
  title: 'Sollicitudi', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_7.id, 
  lat: 51.49127469261474, 
  lng: -0.0866215922851552, 
  address: 'Catesby Street, London SE17, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/London-Street-Art-photos-20.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_26 = Artwork.create(
  title: 'Nunc molestie finibus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_7.id, 
  lat: 51.50516725830231, 
  lng: -0.0612157084960927, 
  address: 'Tench Street, St Katharine\'s & Wapping, London E1W, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Street-Art-London-UK-TMagicworld.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_27 = Artwork.create(
  title: 'Nullam at diam', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_7.id, 
  lat: 51.52076463012391, 
  lng: -0.0584691264648427, 
  address: '31 Brady Street, London E1, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/Streetart-London-uk-blog-tmagicworld-nuart-festival-1.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_28 = Artwork.create(
  title: 'Euismod sit', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_7.id, 
  lat: 51.52994962387667, 
  lng: -0.0673955180664052, 
  address: '37E Baxendale Street, London E2 7BY, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/article-2354486-1A9EC6EE000005DC-226_964x658.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_29 = Artwork.create(
  title: 'Vulputate convallis', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_7.id, 
  lat: 51.52482334420234, 
  lng: -0.04439289355468645, 
  address: '86 Grantley Street, London E1 4BT, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_6281bfe517bc3503f96f464fad1d1537.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_30 = Artwork.create(
  title: 'Lacus mattis tellus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_7.id, 
  lat: 51.51585096591652, 
  lng: -0.04851276660156145, 
  address: '114 Aylward Street, London E1 0QW, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_93d11cfde35a1c6113894a572f02e8d1.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 8
artwork_31 = Artwork.create(
  title: 'Non sit amet', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_8.id, 
  lat: 51.52994962387662, 
  lng: -0.0413029887695302, 
  address: '238 Roman Road, London E2 0RY, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_a0c020d2e5f21519fefd8a8bd650fbf9.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_32 = Artwork.create(
  title: 'Imperdiet', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_8.id, 
  lat: 51.519910117906726, 
  lng: -0.0371831157226552, 
  address: '20 White Tower Way, London E1 4RN, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_a8e86535750520d540353c2ff507aa37.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_33 = Artwork.create(
  title: 'Donec id eros', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_8.id, 
  lat: 51.497687172199036, 
  lng: -0.05949909472656145, 
  address: 'Prospect Street, London SE16 2EQ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_dcf01cbf8d4ce7a9937ddeda6e3ae710.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_34 = Artwork.create(
  title: 'Lacus mauris', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_8.id, 
  lat: 51.479516137083685, 
  lng: -0.1264470317382802, 
  address: '48 Wilcox Road, London SW8 2UX, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/brooklyn-street-art-roa-jaime-rojo-atlanta-12-13-web-6.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_35 = Artwork.create(
  title: 'Ex auctor tristique', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_8.id, 
  lat: 51.492557260697254, 
  lng: -0.14532978320312395, 
  address: '8 Hugh Street, Pimlico, London SW1V 1RP, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/fauxreel_joe_1000.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 9
artwork_36 = Artwork.create(
  title: 'Malesuada rhoncus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_9.id, 
  lat: 51.50815894898174, 
  lng: -0.1477330424804677, 
  address: '15 Hay\'s Mews, Mayfair, London W1J 5PX, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/getxophoto_showcase-550x365.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_37 = Artwork.create(
  title: 'Malesuada rhoncus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_9.id, 
  lat: 51.488923224079485, 
  lng: -0.1717656352539052, 
  address: '85 Dovehouse Street, Chelsea, London SW3 6JZ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/london-street-art-tour-daniel-rolnik-insa-ungnilish-broken-fingaz-sunglasses-mustache.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_38 = Artwork.create(
  title: 'Justo euismod', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_9.id, 
  lat: 51.52567776422941, 
  lng: -0.1271336772460927, 
  address: '18 Burton Street, Kings Cross, London WC1H 9AQ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/pure-evil-ring-thief.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_39 = Artwork.create(
  title: 'Nec lacus vitae', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_9.id, 
  lat: 51.52631856872826, 
  lng: -0.1113408305664052, 
  address: '22 Easton Street, London WC1X 0DS, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/street-art-east-london.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))


# Artist 10
artwork_40 = Artwork.create(
  title: 'Venenatis', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_10.id, 
  lat: 51.51029575063311, 
  lng: -0.1237004497070302, 
  address: '2 Exchange Court, London WC2N 4HN, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/London-Street-Art-photos-20.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_41 = Artwork.create(
  title: 'Consectetur adipiscing elit', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_10.id, 
  lat: 51.518628319518186, 
  lng: -0.116490671874998952, 
  address: '54 Red Lion Street, London WC1R 4PD, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/big_thumb_a0c020d2e5f21519fefd8a8bd650fbf9.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))
artwork_42 = Artwork.create(
  title: 'Commodo tellus', 
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis facilisis massa sit amet mattis aliquam. Curabitur ac leo ac enim dictum finibus. Morbi et venenatis augue, eget tincidunt neque. Suspendisse faucibus gravida ante vitae volutpat. Nunc facilisis quam quis nunc molestie finibus. Aliquam sit amet urna nulla. Nunc eget lorem facilisis, bibendum tellus at, bibendum neque. Sed congue vulputate convallis. Donec id eros ut ex auctor tristique non sit amet felis. Cras bibendum nec lacus vitae consequat. Nunc aliquam velit metus, vitae luctus justo euismod sit amet. Mauris efficitur vel velit et tincidunt. Sed sed placerat mauris. Nullam at diam vitae arcu mattis interdum. Phasellus tempus, felis vel euismod fermentum, dolor lacus mattis tellus, vel aliquet lacus mauris vel urna. Sed quis nibh imperdiet, cursus leo in, suscipit purus. Ut sollicitudin, sem at malesuada rhoncus, dolor ipsum dapibus quam, id commodo tellus urna id turpis.', 
  user_id: artist_10.id, 
  lat: 51.5179874067956, 
  lng: -0.0879948833007802, 
  address: '31 Finsbury Circus, London EC2M 5SQ, UK', 
  image: 'https://s3-eu-west-1.amazonaws.com/grafff/artwork_pics/brooklyn-street-art-roa-jaime-rojo-atlanta-12-13-web-6.jpg', 
  created_at: Faker::Time.between(14.days.ago, Time.now, :day))

artwork_array << artwork_1 << artwork_2 << artwork_3 << artwork_4 << artwork_5 << artwork_6 << artwork_7 << artwork_8 << artwork_9 << artwork_10 << artwork_11 << artwork_12 << artwork_13 << artwork_14 << artwork_15 << artwork_16 << artwork_17 << artwork_18 << artwork_19 << artwork_20 << artwork_21 << artwork_22 << artwork_23 << artwork_24 << artwork_25 << artwork_26 << artwork_27 << artwork_28 << artwork_29 << artwork_30 << artwork_31 << artwork_32 << artwork_33 << artwork_34 << artwork_35 << artwork_36 << artwork_37 << artwork_38 << artwork_39 << artwork_40 << artwork_41 << artwork_42

# COMMENTS

# comment_1 = Comment.create(content: 'Lorem ipsum dolor sit amet', created_at: Time.now, updated_at: Time.now, user_id: user_1.id, artwork_id: artwork_1.id)
# comment_2 = Comment.create(content: 'Pellentesque sit amet commodo tellus', created_at: Time.now, updated_at: Time.now, user_id: user_1.id, artwork_id: artwork_2.id)
# comment_3 = Comment.create(content: 'Morbi facilisis sapien massa, ut viverra nisi rutrum ut', created_at: Time.now, updated_at: Time.now, user_id: user_2.id, artwork_id: artwork_3.id)
# comment_4 = Comment.create(content: 'Donec vulputate sollicitudin aliquam', created_at: Time.now, updated_at: Time.now, user_id: user_2.id, artwork_id: artwork_4.id)
# comment_5 = Comment.create(content: ' Suspendisse efficitur, mi non porta aliquet, ipsum augue', created_at: Time.now, updated_at: Time.now, user_id: user_2.id, artwork_id: artwork_5.id)
# comment_6 = Comment.create(content: 'Donec maximus, augue id pulvinar fermentum', created_at: Time.now, updated_at: Time.now, user_id: user_3.id, artwork_id: artwork_1.id)
# comment_7 = Comment.create(content: 'Mauris pharetra varius rutrum', created_at: Time.now, updated_at: Time.now, user_id: user_3.id, artwork_id: artwork_5.id)
# comment_8 = Comment.create(content: 'Maecenas laoreet imperdiet tortor at sodales', created_at: Time.now, updated_at: Time.now, user_id: user_4.id, artwork_id: artwork_3.id)
# comment_9 = Comment.create(content: 'Praesent et ante vel libero aliquet gravida', created_at: Time.now, updated_at: Time.now, user_id: user_4.id, artwork_id: artwork_2.id)

# # LIKES

35.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n][:id]
  )
end

20.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n + 1][:id]
  )
end

20.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n + 2][:id]
  )
end

35.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n + 3][:id]
  )
end

20.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n + 4][:id]
  )
end

35.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n + 5][:id]
  )
end

10.times do |n|
  Like.create(
  user_id: user_array[n][:id],
  artwork_id: artwork_array[n + 7][:id]
  )
end




# RELATIONSHIPS

# Artist 1
Relationship.create(follower_id: user_1.id, followed_id: artist_1.id)
Relationship.create(follower_id: user_2.id, followed_id: artist_1.id)
Relationship.create(follower_id: user_3.id, followed_id: artist_1.id)
Relationship.create(follower_id: user_4.id, followed_id: artist_1.id)
Relationship.create(follower_id: user_5.id, followed_id: artist_1.id)

# Artist 2
Relationship.create(follower_id: user_6.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_7.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_8.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_9.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_10.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_11.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_12.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_13.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_14.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_15.id, followed_id: artist_2.id)
Relationship.create(follower_id: user_16.id, followed_id: artist_2.id)

# Artist 3
Relationship.create(follower_id: user_17.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_18.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_19.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_20.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_21.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_22.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_23.id, followed_id: artist_3.id)
Relationship.create(follower_id: user_24.id, followed_id: artist_3.id)

# Artist 4
Relationship.create(follower_id: user_25.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_26.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_27.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_28.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_29.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_30.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_31.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_32.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_33.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_34.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_35.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_1.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_2.id, followed_id: artist_4.id)
Relationship.create(follower_id: user_3.id, followed_id: artist_4.id)

# Artist 5
Relationship.create(follower_id: user_4.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_5.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_6.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_7.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_8.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_9.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_10.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_11.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_12.id, followed_id: artist_5.id)
Relationship.create(follower_id: user_13.id, followed_id: artist_5.id)

# Artist 6
Relationship.create(follower_id: user_14.id, followed_id: artist_6.id)
Relationship.create(follower_id: user_15.id, followed_id: artist_6.id)
Relationship.create(follower_id: user_16.id, followed_id: artist_6.id)

# Artist 7
Relationship.create(follower_id: user_17.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_18.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_19.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_20.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_21.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_22.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_23.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_24.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_25.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_26.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_27.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_28.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_29.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_31.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_32.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_33.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_34.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_35.id, followed_id: artist_7.id)
Relationship.create(follower_id: user_1.id, followed_id: artist_7.id)

# Artist 8
Relationship.create(follower_id: user_35.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_34.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_33.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_32.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_31.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_30.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_29.id, followed_id: artist_8.id)
Relationship.create(follower_id: user_28.id, followed_id: artist_8.id)

# Artist 9
Relationship.create(follower_id: user_10.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_11.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_12.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_13.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_14.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_15.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_16.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_17.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_18.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_19.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_21.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_22.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_23.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_24.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_25.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_26.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_27.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_28.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_29.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_30.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_31.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_32.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_33.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_34.id, followed_id: artist_9.id)
Relationship.create(follower_id: user_35.id, followed_id: artist_9.id)

# Artist 10
Relationship.create(follower_id: user_1.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_2.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_3.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_4.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_5.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_6.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_7.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_8.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_9.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_10.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_11.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_12.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_13.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_14.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_15.id, followed_id: artist_10.id)
Relationship.create(follower_id: user_16.id, followed_id: artist_10.id)