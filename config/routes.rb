Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :menu_items, only: [:index]
    resources :orders, only: %i[create update show]
  end
end
