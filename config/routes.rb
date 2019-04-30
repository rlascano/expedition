Rails.application.routes.draw do
  get 'categories/index'
  get 'enterprises/index'
  root 'pages#index'
  get 'pages/index'
  get 'pages/files'

  resources :truckers
  resources :enterprises
  resources :categories
end
