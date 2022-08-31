Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/dealers" => "dealers#index"
    get "/dealers/:id" => "dealers#show"
    post "/dealers" => "dealers#create"
    patch "/dealers/:id" => "dealers#update"
    delete "/dealers/:id" => "dealers#destroy"

    get "/cars" => "cars#index"
    get "/cars/:id" => "cars#show"
    post "/cars" => "cars#create"
    patch "/cars/:id" => "cars#update"
    delete "/cars/:id" => "cars#destroy"

    get "/requests" => "requests#index"
    get "/requests/:id" => "requests#show"
    post "/requests" => "requests#create"
    patch "/requests/:id" => "requests#update"
    delete "/requests/:id" => "requests#destroy"


  end
end
