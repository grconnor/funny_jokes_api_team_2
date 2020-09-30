class Api::V1::JokeGetterController < ApplicationController
  def index
    headers = {
      "x-rapidapi-host": "joke3.p.rapidapi.com",
      "x-rapidapi-key": "285c319c04mshb039dd6377ad95cp13cb02jsnf523c698a5dd"
    }
    response = RestClient.get("https://joke3.p.rapidapi.com/v1/joke", headers)
    parsed_response = JSON.parse(response.body)
    render json: { joke_getter: parsed_response["content"] }
  end
end
