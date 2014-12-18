Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root 'pages#index'

  get 'pages/search_json' => 'pages#search_json'

  get 'users/auth/:provider/callback' => 'omniauth_callbacks#all'

  # ActiveAdmin.routes(self)
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'

  resources :users
  resources :pages
  resources :venues
  resources :comments
end
