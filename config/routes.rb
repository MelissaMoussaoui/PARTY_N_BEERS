Rails.application.routes.draw do
  devise_for :users
  root to: "party_flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"end

  resources :party_flats, only: :destroy, as: "destroy"

  resources :party_flats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :destroy
  resources :users, only: :show
end
