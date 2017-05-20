Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:create]
  root to: 'home#index'

  namespace :api do
    resources :clients
    resources :appointments
  end
end
