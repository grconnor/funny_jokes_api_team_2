RSpec.describe 'GET /api/v1/random_jokes', type: :request do
  before do
    get '/api/v1/random_jokes',
    params: {
      q: ''
    }
  end

  it 'is expected to return 200 response status' do
    expect(response.status).to eq 200
  end

  it 'is expected to return 1 joke' do
    expect(response_json["random_jokes"].count).to eq 1
  end

  it 'is expected to return specific joke' do
    expect(response_json["random_jokes"].second[""]).to eq 1
  end
end