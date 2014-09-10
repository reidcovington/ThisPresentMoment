Rails.application.routes.draw do
  # Users
  resources :users

  # Pics
  resources :pics

  # Root
  root :to => 'pics#index'
end
