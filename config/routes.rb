Rails.application.routes.draw do

  devise_for :users
  # delete "logout", to: "sessions#destroy"
  # devise_scope :user do
  #   get "/sign_out" => "sessions#destroy"
  # end
  # devise_for :users
  get '/profile', to: "users#profile"
  get '/koenkai', to: "pages#koenkai"
  get '/shoko', to: "pages#shoko"

  root to: 'pages#home' # this sets localhost:3000/pages/home as root path
  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :experiences, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :blogposts
  resources :posts
  end
  # if something has sub-elements nest it using do
