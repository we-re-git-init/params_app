Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/query_url' => 'params#query'
    get '/guessing_game' => 'params#game'

    get '/segment_parameter_url/:this_is_a_variable' => 'params#url_segment_method'
  #   get "/photos" => "photos#index"
  end
end
