Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home' # this sets localhost:3000/pages/home as root path
  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # if something has sub-elements nest it using do
end
