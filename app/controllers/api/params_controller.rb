class Api::ParamsController < ApplicationController
  def query
    # behind the scenes
    # params = {"name" => "brian"}

    name = params["name"]
    first_character = params["name"][0]
    if first_character == 'a'
      @message = "The first letter of your name is A"
    else
      @message = "Your name is #{name}"
    end

    render 'query_parameter.json.jb'
  end

  def game
    # get user input
    the_guess = params["user_guess"].to_i
    # compare that user input to the actual answer
    if the_guess == 32
      @user_feedback = "you win"
    elsif the_guess > 32
      @user_feedback = "too high"
    elsif the_guess < 32
      @user_feedback = "too low"
    end
    # give the user a message based on their guess
    render 'guess.json.jb'
  end

  def url_segment_method
    render 'segment_view.json.jb'
  end
end
