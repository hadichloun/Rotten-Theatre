Rails.application.routes.draw do
  resources :reviews
  resources :dislikes
  resources :likes
  resources :watch_lists
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
