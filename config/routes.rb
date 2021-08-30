Rails.application.routes.draw do

  devise_for :books
  root to: 'homes#top'
  get "/home/about" => 'homes#about'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :books, only: [:new, :create, :index, :show, :update, :edit, :destroy]

  resources :users, only: [:show, :index, :edit, :update]
end
