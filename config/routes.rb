Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get 'pages/files'

  resources :tickets do
    resources :ticket_details, except: [:index], controller: 'tickets/ticket_details'    
  end
  resources :truckers
  resources :enterprises
  resources :categories
  resources :products
end
