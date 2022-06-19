Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  get "/cars", to: "cars#list", as: "list_all"
  get "/nearest", to: "cars#nearest", as: "list_nearest"
  get '/cars/:id', to: 'cars#view', as: 'car_view'
  get '/book/:id', to: 'cars#book', as: 'car_book'

end
