module ReqResService
  def self.get_index_of_jokes
    headers = {
      "x-rapidapi-host": "joke3.p.rapidapi.com",
      "x-rapidapi-key": "285c319c04mshb039dd6377ad95cp13cb02jsnf523c698a5dd"
    }
    response = RestClient.get("https://joke3.p.rapidapi.com/v1/joke", headers)
    return JSON.parse(response.body)
  end

  # def self.post_create_upvotes
  #   headers = {
  #     "x-rapidapi-host": "joke3.p.rapidapi.com",
  #     "x-rapidapi-key": "285c319c04mshb039dd6377ad95cp13cb02jsnf523c698a5dd"
  #   }

  #   joke_id = params["joke_id"]
  #   response = RestClient.post("https://joke3.p.rapidapi.com/v1/joke/#{joke_id}/upvote", headers)
  #   return JSON.parse(response.body)
  #   binding.pry
  # end
  
end
