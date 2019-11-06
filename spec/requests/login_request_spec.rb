require 'rails_helper'

RSpec.describe "Login" do
  describe "Existing user" do

    it "can log a user in" do
      user = User.create!(email: "nicholas@cutiepants.com", password: "test", api_key: "jgn983hy48thw9begh98h4539h4")

      post '/api/v1/sessions', params: { "email": "nicholas@cutiepants.com", "password": "test" }

      expect(response).to be_successful
      user_data = JSON.parse(response.body, symbolize_names: true)

      expect(response.content_type).to eq("application/json")
      expect(user_data[:data][:attributes].keys).to eq([:api_key])
    end

  end
end
