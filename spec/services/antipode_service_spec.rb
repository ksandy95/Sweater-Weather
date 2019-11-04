# {:lat=>-22.1044031, :lng=>-65.5967709}
require 'rails_helper'

RSpec.describe "Antipode Service" do
  describe "getting a connection" do

    it "can connect without error" do
      service = AntipodeService.new
      response = service.conn
      body = response.body
      json_d = JSON.parse(body, symbolize_names: true)

      expect(json_d).to be_a Hash
    end

  end
end
