class Api::V1::JokesController < ApplicationController
  def index
    jokes = JokesApiService.get_index_of_jokes
    render json: { jokes: jokes }
  end
end
