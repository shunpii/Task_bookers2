Rails.application.routes.draw do

  devise_for :books
  root to: 'homes#top'
  get "about" => 'homes#about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
