Rails.application.routes.draw do

  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"
  get "/home/about" => "homes#about"

  resources :users, only:[:index, :show, :edit, :update]
  # get "users/:id" => "users#show", as: :mypage
  resources :books
end