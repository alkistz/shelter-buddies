Rails.application.routes.draw do
  resources :bookings
  resources :animals
  devise_for :shelters
  devise_for :volunteers
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
