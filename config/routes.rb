Rails.application.routes.draw do
  devise_for :users
  root 'indicators#index'

  resources :orders
  resources :products
end
