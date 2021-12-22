Rails.application.routes.draw do  
  resources :houses, only: [:show, :index]  
  resources :users, only: [:create, :index]
  resources :favourites
  post 'authenticate', to: 'authentication#index'
  get 'authenticate',to: 'application#current_user'
end
