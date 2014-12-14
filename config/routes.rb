Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root 'pages#index'

  get '/pages_json/' => 'pages#pages_json'

   get 'users/auth/:provider/callback' => 'omniauth_callbacks#all'

  # ActiveAdmin.routes(self)


  resources :users
  resources :pages
end
