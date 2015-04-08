Rails.application.routes.draw do

  root 'static#index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get '/users' => 'users#user_show'
  get '/users/get_current_user' => 'users#get_current_user'
  get '/users/get_all_users' => 'users#get_all_users'
  get '/users/get_artists' => 'users#get_artists'

  get '/artworks' => 'artworks#index'
  get '/artworks/get_latest_artworks' => 'artworks#get_latest_artworks'
  get '/artworks/get_main_map_artworks' => 'artworks#get_main_map_artworks'
  post '/artworks/add_artwork' => 'artworks#add_artwork'

  get '/relationships/get_all_relationships' => 'relationships#get_all_relationships'
  post '/relationships/follow_user' => 'relationships#follow_user'
  post '/relationships/unfollow_user' => 'relationships#unfollow_user'

  get '/comments/get_all_comments' => 'comments#get_all_comments'
  post '/comments/new_comment' => 'comments#new_comment'

  get '/likes/get_all_likes' => 'likes#get_all_likes'
  post '/likes/like_artwork' => 'likes#like_artwork'
  post '/likes/unlike_artwork' => 'likes#unlike_artwork'

end
