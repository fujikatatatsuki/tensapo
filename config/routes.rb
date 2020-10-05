Rails.application.routes.draw do
  root 'costs#index'
  resources :costs, only: [:new, :create]
  #  post 'costs/new', to: 'costs#create'
  # post 'posts', to: 'posts#create'
end
