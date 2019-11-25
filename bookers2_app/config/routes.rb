Rails.application.routes.draw do
  get 'users/home'
  get 'homes/index'
  get 'home/about' => 'homes#show'
  get 'books/:id' => 'books#show', as:'book'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users
  resources :books
  #root 'users#show'
  root 'homes#index'


end

