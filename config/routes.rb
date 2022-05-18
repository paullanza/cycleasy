Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/bookings/my_bookings', to: 'bookings#my_bookings', as: :my_bookings
  get '/bikes/my_bikes', to: 'bikes#my_bikes', as: :my_bikes

  resources :bikes do
    post '/bookings', to: 'bookings#create'
  end
  resources :bookings, only: [:destroy]
end
