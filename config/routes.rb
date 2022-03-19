Rails.application.routes.draw do

  devise_for :users

  #  // Slacker Message Tutorial //
  # resources controller: :rooms, action: :index
  resources :room_messages
  resources :rooms


  # delete "logout", to: "sessions#destroy"
  # devise_scope :user do
  #   get "/sign_out" => "sessions#destroy"
  # end

  # devise_for :users
  get '/profile', to: "users#profile"

  root to: 'pages#home' # this sets localhost:3000/pages/home as root path
  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :experiences, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :blogposts

  resources :chatrooms, only: [:show, :new, :create, :index] do
    resources :messages, only: [:create, :destroy]
  end
  # if something has sub-elements nest it using do
end
