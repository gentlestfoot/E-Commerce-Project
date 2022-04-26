Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"

  resources :orders
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/products/search" => "products#search"
  get "/about" => "static#show"
  get "/cart" => "cart#index"
  post "/cart" => "cart#add"
  get "/contact" => "static#show"
  get "/categories/:id" => "categories#show"
  get "/:page" => "static#show"
end
