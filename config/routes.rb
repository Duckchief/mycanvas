Rails.application.routes.draw do
  get "signup" => "users#new"
  resources :users

  root :to => "visitors#index"

  get "pricing" => "visitors#pricing"
  get "create" => "products#new"
end