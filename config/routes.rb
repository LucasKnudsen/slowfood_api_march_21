Rails.application.routes.draw do
  namespace :api do
      resources :menu_items, only: [:index]
      resources :users, only: [:create]
    end
  end