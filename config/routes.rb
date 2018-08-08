Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  resources :charges 
  resources :buy_characters
  resources :characters
  get 'about/index'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
