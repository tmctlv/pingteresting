Rails.application.routes.draw do
  resources :posts

  resources :pins

  devise_for :users
  root "pages#home"
  get "about" => "pages#about"
  end
