Rails.application.routes.draw do
  get 'cars/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :cars, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
end
