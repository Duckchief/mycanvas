Rails.application.routes.draw do
  resource :session
  root :to => "visitors#index"

  get "signup" => "users#new"
  get "pricing" => "visitors#pricing"
  get "create" => "products#new"
  get "standard-pricelist" => "standard_pricelists#index"
  get "standard-pricelist/:id" => "standard_pricelists#show", as: "show_pricelist"
  get "standard-pricelist/:id/edit" => "standard_pricelists#edit", as: "edit_pricelist"
  # patch "standard-pricelist" => "standard_pricelists#update"


  resources :users
  resources :products
  resources :standard_pricelists
end