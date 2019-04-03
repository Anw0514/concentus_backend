Rails.application.routes.draw do
  resources :messages
  resources :bookings
  resources :days
  resources :page_tidbits
  resources :tidbits
  resources :band_members
  resources :bands
  resources :venues
  resources :musicians
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
