Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users

  root "offers#index"
  resources :offers, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create], module: :offers
  end
  resources :bookings, only: [:index, :show, :edit, :update]
end
