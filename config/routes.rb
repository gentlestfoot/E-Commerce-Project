Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "products#index"

  get "/products/search" => "products#search"
  get "/categories/:id" => "categories#show"

  get "/cart" => "cart#index"
  post "/checkout" => "cart#checkout"
  post "/cart" => "cart#add"

  get "/:page" => "static#show"

  resources :orders
  resources :products
end
