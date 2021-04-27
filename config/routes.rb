Rails.application.routes.draw do
  namespace :api do
      resources :positions, only: [:index]
    end
  end