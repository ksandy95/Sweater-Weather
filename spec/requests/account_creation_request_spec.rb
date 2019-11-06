require 'rails_helper'


RSpec.describe "Creating an account" do
  describe 'User API' do

    it "Can recieve user info and send an api" do

      user_info = { "email": "nicholas@cutiepants.com",
                    "password": "password",
                    "password_confirmation": "password" }

      post '/api/v1/users', params: user_info

      result = JSON.parse(response.body)

      expect(response).to have_status(200)
      expect(result).to be_a(Hash)
      expect(result['api_key']).to eq('jgn983hy48thw9begh98h4539h4')
    end
  end
end
