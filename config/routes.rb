Rails.application.routes.draw do
  get 'shelters/index'
  get 'shelters/show'
  get 'volunteers/index'
  get 'volunteers/show'
  resources :bookings
  resources :animals
  devise_for :shelters
  devise_for :volunteers
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
