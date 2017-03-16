Rails.application.routes.draw do

  devise_scope :user do
    get '/users/sign_up/:role', to: 'devise/registrations#new'
  end

  devise_for :users

  resources :licenses
  resources :products
  resources :charges

  root to: 'pages#index'

  get '/pricing', to: 'pages#pricing', as: :pricing

end
