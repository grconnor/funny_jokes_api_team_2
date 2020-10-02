class Api::V1::VotesController < ApplicationController
  def create
    joke_id = params["joke_id"]

    joke = JokesApiService.post_create_upvotes(joke_id)
    render json: { joke: joke, message: "Thank's for your vote!" }
  end
end
