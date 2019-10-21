Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :reviews
  resources :users
  get '/', to: 'user#home', as: "home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
