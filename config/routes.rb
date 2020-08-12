Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create] #sign up
  resources :sessions, only: %i[create destroy] #login/logout
  resources :articles, only: %i[new create] #new form
  resources :votes, only: %i[create destroy] #vote / unvote
  resources :categories, only: %i[index show] #homepage / #each category

  root 'categories#index'
end
