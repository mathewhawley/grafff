# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Artwork.delete_all
Comment.delete_all
Like.delete_all
Relationship.delete_all

# USERS

user_1 = User.create(first_name: 'John', last_name: 'Smith', username: 'johnsmith', email: 'john.smith@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet', created_at: Time.now, last_sign_in_at: Time.now, is_artist: false)
user_2 = User.create(first_name: 'Bruce', last_name: 'Wayne', username: 'brucewayne', email: 'bruce.wayne@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet', created_at: Time.now, last_sign_in_at: Time.now, is_artist: true)
user_3 = User.create(first_name: 'Johnny', last_name: 'Appleseed', username: 'johnnyappleseed', email: 'johnny.appleseed@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet', created_at: Time.now, last_sign_in_at: Time.now, is_artist: false)
user_4 = User.create(first_name: 'Sarah', last_name: 'Jackson', username: 'sarahjackson', email: 'sarah.jackson@gmail.com', password: 'password', bio: 'Lorem ipsum dolor sit amet', created_at: Time.now, last_sign_in_at: Time.now, is_artist: true)

# ARTWORKS

artwork_1 = Artwork.create(title: 'Lorem ipsum', description: 'Lorem ipsum dolor sit amet', user_id: user_2.id)
artwork_2 = Artwork.create(title: 'Dolor sit', description: 'Lorem ipsum dolor sit amet', user_id: user_2.id)
artwork_3 = Artwork.create(title: 'Amet consectectur', description: 'Lorem ipsum dolor sit amet', user_id: user_4.id)
artwork_4 = Artwork.create(title: 'Lorem ipsum dolor', description: 'Lorem ipsum dolor sit amet', user_id: user_4.id)
artwork_5 = Artwork.create(title: 'Ipsum sit amet', description: 'Lorem ipsum dolor sit amet', user_id: user_2.id)

# COMMENTS

comment_1 = Comment.create(content: 'Lorem ipsum dolor sit amet', created_at: Time.now, updated_at: Time.now, user_id: user_1.id, artwork_id: artwork_1.id)
comment_2 = Comment.create(content: 'Pellentesque sit amet commodo tellus', created_at: Time.now, updated_at: Time.now, user_id: user_1.id, artwork_id: artwork_2.id)
comment_3 = Comment.create(content: 'Morbi facilisis sapien massa, ut viverra nisi rutrum ut', created_at: Time.now, updated_at: Time.now, user_id: user_2.id, artwork_id: artwork_3.id)
comment_4 = Comment.create(content: 'Donec vulputate sollicitudin aliquam', created_at: Time.now, updated_at: Time.now, user_id: user_2.id, artwork_id: artwork_4.id)
comment_5 = Comment.create(content: ' Suspendisse efficitur, mi non porta aliquet, ipsum augue', created_at: Time.now, updated_at: Time.now, user_id: user_2.id, artwork_id: artwork_5.id)
comment_6 = Comment.create(content: 'Donec maximus, augue id pulvinar fermentum', created_at: Time.now, updated_at: Time.now, user_id: user_3.id, artwork_id: artwork_1.id)
comment_7 = Comment.create(content: 'Mauris pharetra varius rutrum', created_at: Time.now, updated_at: Time.now, user_id: user_3.id, artwork_id: artwork_5.id)
comment_8 = Comment.create(content: 'Maecenas laoreet imperdiet tortor at sodales', created_at: Time.now, updated_at: Time.now, user_id: user_4.id, artwork_id: artwork_3.id)
comment_9 = Comment.create(content: 'Praesent et ante vel libero aliquet gravida', created_at: Time.now, updated_at: Time.now, user_id: user_4.id, artwork_id: artwork_2.id)

# LIKES

like_1 = Like.create(user_id: user_1.id, artwork_id: artwork_1.id, created_at: Time.now, updated_at: Time.now)
like_2 = Like.create(user_id: user_1.id, artwork_id: artwork_2.id, created_at: Time.now, updated_at: Time.now)
like_3 = Like.create(user_id: user_1.id, artwork_id: artwork_3.id, created_at: Time.now, updated_at: Time.now)
like_4 = Like.create(user_id: user_2.id, artwork_id: artwork_1.id, created_at: Time.now, updated_at: Time.now)
like_5 = Like.create(user_id: user_2.id, artwork_id: artwork_4.id, created_at: Time.now, updated_at: Time.now)
like_6 = Like.create(user_id: user_3.id, artwork_id: artwork_2.id, created_at: Time.now, updated_at: Time.now)
like_7 = Like.create(user_id: user_3.id, artwork_id: artwork_1.id, created_at: Time.now, updated_at: Time.now)
like_8 = Like.create(user_id: user_4.id, artwork_id: artwork_2.id, created_at: Time.now, updated_at: Time.now)
like_9 = Like.create(user_id: user_4.id, artwork_id: artwork_3.id, created_at: Time.now, updated_at: Time.now)

# RELATIONSHIP

relationship_1 = Relationship.create(follower_id: user_1.id, followed_id: user_2.id, created_at: Time.now, updated_at: Time.now)
relationship_1 = Relationship.create(follower_id: user_1.id, followed_id: user_4.id, created_at: Time.now, updated_at: Time.now)
relationship_1 = Relationship.create(follower_id: user_3.id, followed_id: user_4.id, created_at: Time.now, updated_at: Time.now)