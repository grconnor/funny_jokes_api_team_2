class Api::V1::VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    joke_id = params["jokeId"]
    joke = JokesApiService.post_create_upvotes(joke_id)
    if joke["content"]
      render json: { joke: joke, message: "Upvoted!" }
    else
      render json: { error_message: "An error occurred" }, status: 404
    end
  end
end
