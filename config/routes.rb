Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:create]
  resources :notes, only: [:edit, :create]
  root to: 'home#index'
end
