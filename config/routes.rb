Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/query_url' => 'params#query'
    get '/guessing_game' => 'params#game'
  #   get "/photos" => "photos#index"
  end
end
