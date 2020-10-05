class Api::V1::JokesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    jokes = JokesApiService.get_index_of_jokes
    render json: { jokes: jokes }
  end

  def create
    joke = current_user.jokes.create(joke_params)
    if joke.persisted?
      render json: { message: "Your joke has been saved" }
    else
      render json: { error_message: "Sorry, we couldn't save your joke" }
    end
  end

  private

  def joke_params
    params.permit(:joke_id, :content)
  end
end
