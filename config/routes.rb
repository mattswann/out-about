Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root 'pages#index'

  get 'pages/search_json' => 'pages#search_json'
  get '/venues/:id/venue_json' => 'venues#venue_json'


  get 'users/auth/:provider/callback' => 'omniauth_callbacks#all'

  # ActiveAdmin.routes(self)


  resources :users
  resources :pages
  resources :venues
end
