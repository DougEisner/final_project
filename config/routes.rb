Rails.application.routes.draw do

  devise_scope :user do
    get '/users/sign_up/:role', to: 'devise/registrations#new'
    post '/ctd/sign_up', to: 'ctd#create'
    post '/ctd/sign_in', to: 'ctd_sessions#create'
  end

  devise_for :users

  resources :licenses
  resources :products
  resources :charges

  root to: 'pages#index'

  get '/pricing', to: 'pages#pricing', as: :pricing
  get '/license_template', to: 'pages#license_template', as: :license_template

end
