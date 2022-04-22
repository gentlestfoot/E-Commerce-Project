Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"

  resources :orders
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/about" => "static#show"
  get "/contact" => "static#show"
  get "/categories/:id" => "categories#show"
end
