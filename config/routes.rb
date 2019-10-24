Rails.application.routes.draw do
  
  resources :restaurants, only: [:index, :show]
  resources :reviews
  resources :users
  resources :reservations
  resources :locations, only: [:index, :show]
  get '/', to: 'users#home', as: "home"
  get '/contact', to: 'users#contact', as: "contact"
  get '/stats', to: 'users#stats', as: "stats"
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#process_login'
  get '/logout', to: 'sessions#logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
