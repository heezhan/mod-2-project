Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :reviews, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
