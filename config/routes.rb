Rails.application.routes.draw do
  get 'enterprises/index'
  root 'pages#index'
  get 'pages/index'
  get 'pages/files'

  resources :truckers
  resources :enterprises
end
