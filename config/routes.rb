Rails.application.routes.draw do
  get 'peach/new'
  devise_for :users
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :cars, except: %i[index edit update] do
    resources :bookings, only: %i[new create index]
  end
end
