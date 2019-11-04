require 'rails_helper'

RSpec.describe "Geocode Service" do

  describe "Getting a connection with Faraday" do
    # it "Can connect without an error" do
    #   service = GeocodeService.new
    #   connection = service.conn
    #   body = connection.body
    #   json_d = JSON.parse(body, symbolize_names: true)
    #   lat_long = json_d[:results][0][:geometry][:location]
    #   expect(lat_long).to be_a Hash
    #   expect(lat_long.count).to eq(2)
    # end

    it "can pass in a location" do
      service = GeocodeService.new
      test = service.location_coordinates("Denver,CO")
      expect(test.count).to eq(2)
      expect(test).to be_a Hash
      expect(test[:lat]).to eq(39.7392358)
      expect(test[:lng]).to eq(-104.990251)
    end

  end
end
