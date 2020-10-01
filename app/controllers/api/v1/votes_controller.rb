class Api::V1::VotesController < ApplicationController
  def create
    headers = {
      "x-rapidapi-host": "joke3.p.rapidapi.com",
      "x-rapidapi-key": "285c319c04mshb039dd6377ad95cp13cb02jsnf523c698a5dd"
    }

    joke_id = params["joke_id"]
    # binding.pry
    # response = RestClient.post("https://joke3.p.rapidapi.com/v1/joke/db09c5d9659d44448c4da0ae5d321e55/upvote", headers)

    response = RestClient.post("https://joke3.p.rapidapi.com/v1/joke/#{joke_id}/upvote", headers)
    return JSON.parse(response.body)
    # binding.pry
    # votes = ReqResService.post_create_upvotes
    # render json: { votes: votes }
    # binding.pry
  end
end
