require 'rails_helper'

RSpec.describe "Directions Service" do
  describe "Getting a connection without error" do

    it "can get a connection" do
      service = DirectionsService.new
      response = service.conn
      binding.pry
    end

  end
end
