Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:create]
  namespace :api do
    resources :clients do
      resources :notes, only: [:update, :create]
    end
  end
  root to: 'home#index'

  namespace :api do
    resources :appointments
  end
end
