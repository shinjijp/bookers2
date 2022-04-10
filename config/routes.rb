Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :books, only:[:new, :index, :show, :create]
  post 'books' => 'books#create'
  root to: 'homes#top'
  get "/homes/about" => "homes#about", as: "about"
  
end
