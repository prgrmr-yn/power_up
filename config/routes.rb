Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :powerbanks do
    resources :bookings, only: [:new, :create]
  end
  # resources :bookings, except: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
  patch 'accept', to: 'bookings#accept'
  patch 'decline', to: 'bookings#decline'
end
