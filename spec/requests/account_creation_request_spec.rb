require 'rails_helper'


RSpec.describe "Creating an account" do
  describe 'User API' do

    it "Can recieve user info and send an api" do

      user_info = { "email": "nicholas@cutiepants.com",
                    "password": "password",
                    "password_confirmation": "password" }

      post '/api/v1/users', params: user_info

      result = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(result).to be_a(Hash)
      expect(result["data"]["attributes"]["api_key"].length).to eq(24)
    end
  end
end
