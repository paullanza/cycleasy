Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/bookings/my_bookings', to: 'bookings#my_bookings', as: :my_booking

  get '/bikes/my_bikes', to: 'bikes#my_bikes', as: :my_bikes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes
end
