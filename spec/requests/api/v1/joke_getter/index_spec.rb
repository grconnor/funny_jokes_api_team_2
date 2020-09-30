RSpec.describe 'GET /api/v1/joke_getter', type: :request do
  before do
    get '/api/v1/joke_getter'
  end

  it 'is expected to return 200 response status' do
    expect(response.status).to eq 200
  end

  it 'is expected to return 1 joke' do
    expect(response_json["joke_getter"]).to be_truthy
  end

  it 'is expected to return a random joke' do
    expect(response_json["joke_getter"]).to eq 'Two dyslexics walk into a bra.'
  end
end