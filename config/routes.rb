Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Users Routes
  post "/users" => "users#create"
  # Sessions Routes
  post "/sessions" => "sessions#create"
  # Trips Routes
  get "/trips" => "trips#index"
  post "/trips" => "trips#create"
  get "/trips/:id" => "trips#show"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"
  # Places Routes
  get "/places" => "places#index"
  post "/places" => "places#create"
  get "/places/:id" => "places#show"
  patch "/places/:id" => "places#update"
  delete "/places/:id" => "places#destroy"
end
