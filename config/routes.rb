Rails.application.routes.draw do
  resources :favorites, except: [:new, :create]
  resources :cities
  root 'cities#index'
  resources :users
  resources :posts do 
    resources :comments 
  end

  get "sessions/logout", to: 'sessions#logout', as: 'logout'

  get "/sessions/new", to: 'sessions#new', as: 'new_login'

  post "/sessions/login", to: 'sessions#login', as: 'login'

  post "/favorites/:id", to: 'favorites#create', as: 'new_favorite'

  post "/likes/:id", to: 'posts#like', as: 'like_post'
 
end
