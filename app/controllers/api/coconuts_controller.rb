class Api::CoconutsController < ApplicationController
  def name_query
    @name = params["name"].upcase
   render 'name.json.jbuilder'
 end

 def a_game
  @name = params["name"].downcase

    if @name.first == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
  render 'a_name.json.jbuilder'
  end

  def string_guessing
    @guess = params["guess"].to_i
    answer = 42

    if @guess > answer
      @hint = "too high, guess lower"

    elsif @guess < answer
      @hint = "too low, guess higher"

    else 
      @hint = "You got it, youre a freaking genius! How did you know?"
    end

    render 'string_guessing.json.jbuilder'
  end
  def guessing_game
    @guess = params["guess"].to_i
     answer = 42

    if @guess > answer
      @hint = "too high, guess lower"

    elsif @guess < answer
      @hint = "too low, guess higher"

    else 
      @hint = "You got it, youre a freaking genius! How did you know?"
    end

    render 'guessing_game.json.jbuilder'
  end

  
end

