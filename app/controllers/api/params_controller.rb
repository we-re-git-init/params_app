class Api::ParamsController < ApplicationController
  def query
    p 'params hahahaha'
    @name = params["name"].reverse
    render 'query_parameter.json.jb'
  end
end
