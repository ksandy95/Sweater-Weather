require 'rails_helper'

RSpec.describe 'Hitting the antipode endpoint' do
  describe "gives me back a forecast to the provided cities antipode city" do
    it "wont error out!" do
      get '/api/v1/antipode?location=Hong Kong'

      expect(response).to be_successful
    end
  end
end
