Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/:id' => 'books#show', as:'book'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :users
  resources :books
  root 'users#index'

end

