Rails.application.routes.draw do
  get 'pages/index'

  resources :posts
  resources :products
  resources :services
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
