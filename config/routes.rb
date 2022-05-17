Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes

  get '/bikes/my_bikes', to: 'bikes#my_bikes', as: :my_bikes
end
