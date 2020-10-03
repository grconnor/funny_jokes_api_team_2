require "coveralls"
Coveralls.wear_merged!("rails")

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../config/environment", __dir__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require "spec_helper"
require "rspec/rails"
require "webmock/rspec"

ActiveRecord::Migration.maintain_test_schema!

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include FactoryBot::Syntax::Methods
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
  config.include ResponseJSON
  config.filter_gems_from_backtrace("webmock")
  config.before do
    stub_request(:get, "https://joke3.p.rapidapi.com/v1/joke")
      .to_return(status: 200, body: file_fixture("random_joke.json"), headers: {})
    stub_request(:post, "https://joke3.p.rapidapi.com/v1/joke/db09c5d9659d44448c4da0ae5d321e55/upvote")
      .to_return(status: 200, body: file_fixture("random_joke.json"), headers: {})
    stub_request(:post, "https://joke3.p.rapidapi.com/v1/joke/invalid_id/upvote")
      .to_return(status: 404, body: "", headers: {})
  end
end
