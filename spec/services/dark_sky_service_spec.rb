require 'rails_helper'

RSpec.describe "DarkSky Service" do
  describe "Getting a connection with test lat and lng" do
    # it "can connect without error" do
    #   service = DarkSkyService.new
    #   response = service.conn
    #   body = response.body
    #   json_d = JSON.parse(body, symbolize_names: true)
    #   expect(json_d).to be_a Hash
    #   expect(json_d[:timezone]).to eq("America/New_York")
    # end

    it "can connect without error with passed in coordinates" do
      service = DarkSkyService.new
      coordinates = {:lat=>42.3601, :lng=>-71.0589}
      response = service.forecast(coordinates)
      body = response.body
      json_d = JSON.parse(body, symbolize_names: true)
      expect(json_d).to be_a Hash
      expect(json_d[:timezone]).to eq("America/New_York")
    end
  end
end
