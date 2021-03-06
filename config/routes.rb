Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/bookings/my_bookings', to: 'bookings#my_bookings', as: :my_bookings
  get '/bookings/:id/accepted', to: 'bookings#accepted', as: :accept_booking
  get '/bookings/:id/declined', to: 'bookings#declined', as: :decline_booking
  get '/bookings/:id', to: 'bookings#show', as: :show_booking
  get '/bikes/my_bikes', to: 'bikes#my_bikes', as: :my_bikes
  get '/bookings/:id/edit', to: 'bookings#edit', as: :edit_booking
  patch '/bookings/:id', to: 'bookings#update', as: :booking
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes do
    post '/bookings', to: 'bookings#create'
  end
  resources :bookings, only: [:destroy]
end
