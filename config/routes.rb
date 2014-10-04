Rails.application.routes.draw do
  # Users
  post '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  resources :users
  get '/users', to: 'users#index'

  # Pics
  get '/pics/new_pictures', to: 'pics#new_pictures'
  get '/pics/share', to: 'pics#share'
  resources :pics

  # Root
  root :to => 'pics#index'
end
