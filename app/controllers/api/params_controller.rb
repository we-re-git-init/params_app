class Api::ParamsController < ApplicationController
  def query
    name = params["name"]
    first_character = params["name"][0]
    if first_character == 'a'
      @message = "The first letter of your name is A"
    else
      @message = "Your name is #{name}"
    end

    render 'query_parameter.json.jb'
  end
end
