RSpec.describe "POST /api/v1/jokes", type: :request do
  let!(:user) { create(:user) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: "application/json" }.merge!(credentials) }

  describe "successfully" do
    before do
      post "/api/v1/jokes",
           params: {
             jokeId: "db09c5d9659d44448c4da0ae5d321e55",
             content: "Why do trees seem suspicious on sunny days? Dunno, they're just a bit shady."
           },
           headers: headers
    end

    it "should respond with 200 status" do
      expect(response.status).to eq 200
    end

    it "should respond with success message" do
      expect(response_json["message"]).to eq "Your joke has been saved"
    end
  end
end