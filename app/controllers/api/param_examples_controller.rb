class Api::ParamExamplesController < ApplicationController

  def name
    render "query_name.json.jb"
  end

  def guess_game
    guess_answer = params['guess'].to_i
    if guess_answer > 32
      @message = "you guessed too high"
    elsif guess_answer < 32
      @message = "you guessed too low"
    else
      @message = "That's correct!"
    end
    render "guess_game.json.jb"
  end
end
