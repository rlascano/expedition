Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get 'pages/files'

  resources :tickets do
    resources :ticket_details, controller: 'tickets/ticket_details'
    resources :observations
  end

  resources :truckers
  resources :enterprises
  resources :categories
  resources :products
end
