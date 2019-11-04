require 'rails_helper'

RSpec.describe "Geocode Service" do

  describe "Getting a connection with Faraday" do
    it "Can connect without an error" do
      service = GeocodeService.new
      connection = service.conn
      body = connection.body
      json_d = JSON.parse(body, symbolize_names: true)
      lat_long = json_d[:results].first[:geometry][:bounds][:northeast]
      binding.pry
      expect(lat_long).to be_a Hash
      expect(lat_long.count).to eq(2)
    end
  end
end
