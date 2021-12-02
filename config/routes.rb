Rails.application.routes.draw do  
  resources :houses, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
  get 'authenticate',to: 'application#current_user'
  resources :users, only: [:create, :index]
  resources :favourites, only: [:create, :destroy, :index]
end
