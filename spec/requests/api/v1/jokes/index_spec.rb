RSpec.describe "GET /api/v1/jokes", type: :request do
  before do
    get "/api/v1/jokes"
  end

  it "is expected to return 200 response status" do
    expect(response.status).to eq 200
  end

  it "is expected to return 1 joke" do
    expect(response_json["jokes"]["content"]).to be_truthy
  end

  it "is expected to return a random joke" do
    expect(response_json["jokes"]["content"]).to eq "Two dyslexics walk into a bra."
  end
end
