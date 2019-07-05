Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get 'pages/files'

  resources :tickets
  resources :truckers
  resources :enterprises
  resources :categories
  resources :products
end
