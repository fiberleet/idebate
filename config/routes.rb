Rails.application.routes.draw do

  resources :topics
  resources :arguments

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"
  devise_for :users, skip: :all
  resources :users
  resources :debates
  resources :friendships, :only => [:index, :update]
end
