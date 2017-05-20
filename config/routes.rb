Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:create]
  namespace :api do
    resources :clients do
      resources :notes, only: [:edit, :create]
    end
  end
  root to: 'home#index'
end
