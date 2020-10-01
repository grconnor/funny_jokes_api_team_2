module ReqResService
  def self.get_index_of_jokes
    headers = {
      "x-rapidapi-host": "joke3.p.rapidapi.com",
      "x-rapidapi-key": "285c319c04mshb039dd6377ad95cp13cb02jsnf523c698a5dd"
    }
    response = RestClient.get("https://joke3.p.rapidapi.com/v1/joke", headers)
    return JSON.parse(response.body)
  end
end
