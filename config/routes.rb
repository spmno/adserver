Rails.application.routes.draw do
  resources :ad_movies
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
