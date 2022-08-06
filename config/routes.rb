Rails.application.routes.draw do

  root to: 'fallback#index'
  
  resources :ratings
  resources :reviews
  resources :dislikes
  resources :likes
  resources :watch_lists
  resources :movies
  resources :users

  post "/login", to: "auth#login"
  # signup route
  post "/signup" => "auth#signup"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
