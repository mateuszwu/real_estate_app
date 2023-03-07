Rails.application.routes.draw do
  devise_for :users
  resources :cities
  resources :property_types
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#show'
end
