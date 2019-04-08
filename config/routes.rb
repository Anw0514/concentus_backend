Rails.application.routes.draw do
  resources :messages, only: [:create, :update]
  resources :bookings, only: [:create, :delete]
  resources :tidbits, only: [:create, :index]
  resources :users, only: [:create, :update, :destroy]
  resources :musicians, only: [:create, :destroy, :update]
  resources :bands, only: [:create, :destroy, :update]
  resources :venues, only: [:create, :destroy, :update]

  # custom route for '/mypages'
  get '/users/:id/info', to: "users#info"

  # custom route for '/login'
  post '/login', to: "application#login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
