Rails.application.routes.draw do

  root 'static#index'

  devise_for :users, :controllers => { registrations: 'registrations' }

  get 'users/get_current_user' => 'users#get_current_user'
  get 'users/get_all_users' => 'users#get_all_users'
  get 'users/get_artists' => 'users#get_artists'

  get 'artworks' => 'artworks#index'
  get 'artworks/get_latest_artworks' => 'artworks#get_latest_artworks'
  get 'artworks/get_main_map_artworks' => 'artworks#get_main_map_artworks'
  post 'artworks/add_artwork' => 'artworks#add_artwork'

  get 'relationships/get_all_relationships' => 'relationships#get_all_relationships'
  post 'relationships/follow_user' => 'relationships#follow_user'
  post 'relationships/unfollow_user' => 'relationships#unfollow_user'

  get 'comments/get_all_comments' => 'comments#get_all_comments'
  post 'comments/new_comment' => 'comments#new_comment'

  get 'likes/get_all_likes' => 'likes#get_all_likes'
  post 'likes/like_artwork' => 'likes#like_artwork'
  post 'likes/unlike_artwork' => 'likes#unlike_artwork'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
