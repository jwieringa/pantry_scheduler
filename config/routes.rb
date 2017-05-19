Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  namespace :api do
    resources :clients
  end
end
