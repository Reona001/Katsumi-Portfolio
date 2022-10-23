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
  get '/shisakuteigen', to: "pages#shisakuteigen"

  # root to: 'pages#home' # this sets localhost:3000/pages/home as root path
  root to: "pages#shisakuteigen"

  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :experiences, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :blogposts
  resources :posts
  resources :shisakuteigen, only: :show
  end
  # if something has sub-elements nest it using do
