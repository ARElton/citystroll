Rails.application.routes.draw do
  resources :favorites
  resources :cities
  root 'cities#index'
  resources :posts do 
    resources :comments 
  end
  # resources :comments 
  # get '/posts/:id/comments/:id', to: 'comments#new', as: 'new_comment'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
