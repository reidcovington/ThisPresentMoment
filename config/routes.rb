Rails.application.routes.draw do
  # Users
  resources :users

  # Pics
  get '/pics/new_pictures', to: 'pics#new_pictures'
  resources :pics

  # Root
  root :to => 'pics#index'
end
