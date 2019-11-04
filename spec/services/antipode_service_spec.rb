require 'rails_helper'

RSpec.describe "Antipode Service" do
  describe "getting a connection" do

    it "can connect without error" do
      service = AntipodeService.new
      coordinates = {:lat=>-22.1044031, :lng=>-65.5967709}
      response = service.get_antipode(coordinates)
      body = response.body
      json_d = JSON.parse(body, symbolize_names: true)

      expect(json_d).to be_a Hash
      expect(json_d[:data][:attributes][:lat]).to eq(22.1044031)
      expect(json_d[:data][:attributes][:long]).to eq(180.0)
    end

  end
end
