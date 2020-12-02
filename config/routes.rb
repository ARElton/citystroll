Rails.application.routes.draw do
  resources :favorites
  resources :cities
  root 'cities#index'
  resources :posts do 
    resources :comments 
  end

  delete "sessions/logout", to: 'sessions#logout', as: 'logout'
  # delete "/sessions/logout", to: 'sessions#logout', as: ‘logout’

  # get "/sessions/new", to: 'sessions#new', as: ‘new_login’

  get "/sessions/new", to: 'sessions#new', as: 'new_login'

  post "/sessions/login", to: 'sessions#login', as: 'login'

  # post "/sessions/login", to: 'sessions#login', as: 'login'

  
end
