class Api::V1::JokesController < ApplicationController
  def index
    jokes = JokesApiService.get_index_of_jokes
    render json: { jokes: jokes }
  end

  before_action :authenticate_user!

  def create
    joke = Joke.create(joke_params)
  end

  private

  def joke_params
    params.permit("jokeId", "content")
  end
end
