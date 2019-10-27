Rails.application.routes.draw do
  resources :user_profiles
  namespace :admin do
      resources :users
      root to: "users#index"
    end
  root to: 'users#index'
  devise_for :users
  resources :users
end
