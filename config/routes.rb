Rails.application.routes.draw do
  resources :messages, only: [:create, :update]
  resources :bookings, only: [:create, :delete]
  resources :tidbits, only: [:create, :index]
  resources :users, only: [:create, :update, :destroy]

  # custom route for '/mypages'
  get '/users/:id/info', to: "users#info"

  # custom route for '/login'
  get '/login', to: "application#login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
