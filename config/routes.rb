Rails.application.routes.draw do
  get 'properties/index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "mycars", to: "pages#dashboard", as: :mycars
  delete "bookings/:id", to: "bookings#destroy", as: 'delete_booking'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars, except: %i[edit update] do
    resources :bookings, only: %i[new create index]
  end
end
