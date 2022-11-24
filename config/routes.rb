Rails.application.routes.draw do
  get 'properties/index'
  devise_for :users
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "mycars", to: "pages#dashboard"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars, except: %i[index edit update] do
    resources :bookings, only: %i[new create index]
  end
end
