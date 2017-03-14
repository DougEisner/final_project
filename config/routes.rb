Rails.application.routes.draw do

  resources :licenses
  resources :products
  resources :charges
  devise_for :users
  root to: 'pages#index'

  get '/secret', to: 'pages#secret', as: :secret

end
