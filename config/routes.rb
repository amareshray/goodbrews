Rails.application.routes.draw do
  devise_for :users
  resources :roasters
  resources :coffees
  authenticated :user do
  root 'coffees#index', as: :authenticated_root
  end

  root 'pages#home'
  end
