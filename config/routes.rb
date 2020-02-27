Rails.application.routes.draw do
  get 'shelters/index'
  get 'shelters/show'
  get 'volunteers/index'
  get 'volunteers/show'
  resources :bookings, except: [:new, :create]
  resources :animals do
    resources :bookings, only: [:new, :create]
  end
  devise_for :shelters
  devise_for :volunteers
  root to: 'pages#home'
  namespace :volunteer do
    resources :bookings, only: [:index]
  end

  namespace :shelter do
    get 'bookings/index', to: 'bookings#index', as: :my_bookings
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
