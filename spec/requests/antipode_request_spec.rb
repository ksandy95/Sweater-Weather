require 'rails_helper'

RSpec.describe 'Hitting the antipode endpoint' do
  describe "gives me back a forecast to the provided cities antipode city" do
    xit "wont error out!" do
      get '/api/v1/antipode?location=Hong Kong'

      expect(response).to be_successful

      parsed = JSON.parse(response.body, symbolize_names: true)

      expect(parsed).to be_a Hash
      expect(parsed[:data]).to be_a Array
      expect(parsed[:data][0][:id]).to eq(1)

    end
  end
end
