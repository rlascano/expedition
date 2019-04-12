Rails.application.routes.draw do
  root 'truckers#index'

  resources :truckers
end
