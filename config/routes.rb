Rails.application.routes.draw do

  devise_for :books
  root to: 'homes#top'
  get "about" => 'homes#about'
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]

  resources :users, only: [:show, :index, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
