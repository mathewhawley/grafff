Rails.application.routes.draw do

  root 'static#index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  # Current user
  get '/users/current_user' => 'users#get_current_user'

  ##########################################################################################
  # Getting content for templates
  ##########################################################################################

  # Homepage
  get '/home/map' => 'artworks#main_map_artwork'
  get '/home/popular_artists' => 'users#popular_artists'
  get '/home/latest_artworks' => 'artworks#latest_artworks'

  # Artwork index page
  get '/artworks' => 'artworks#index'

  # Artwork show page
  get '/artworks/show' => 'artworks#show'
  get '/artworks/comments' => 'comments#artwork_comments'
  get '/artworks/likes' => 'likes#artwork_likes'
  get '/artworks/check_for_like' => 'likes#check_for_like'

  # User show page
  get '/users/show' => 'users#show'
  get '/users/likes' => 'likes#user_likes'
  get '/users/followed_artists' => 'relationships#followed_artists'
  get '/users/artworks' => 'artworks#user_artworks'
  get '/users/check_if_following' => 'relationships#check_if_following'

  # Artist index page
  get '/artists' => 'users#all_artists'


  ##########################################################################################
  # Functionality
  ##########################################################################################

  # User show page
  post '/artworks/new_artwork' => 'artworks#new_artwork'
  post '/relationships/follow_artist' => 'relationships#follow_artist'
  post '/relationships/unfollow_artist' => 'relationships#unfollow_artist'

  # Artwork show page
  post '/comments/new_comment' => 'comments#new_comment'
  post '/likes/like_artwork' => 'likes#like_artwork'
  post '/likes/unlike_artwork' => 'likes#unlike_artwork'
  
end
