Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[create] # sign up down
  resources :sessions, only: %i[create] # login/logout down
  resources :articles, only: %i[new create] do # new form
    resources :votes, only: %i[create destroy] # vote / unvote
  end
  resources :categories, only: %i[show] # homepage down / #each category
  get '/sign_up', to: 'users#new' # sign up
  get '/log_in', to: 'sessions#new' # log in
  delete '/log_out', to: 'sessions#destroy' # log out
  root 'categories#index' # homepage
end
