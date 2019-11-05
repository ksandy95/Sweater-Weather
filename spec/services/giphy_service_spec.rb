require 'rails_helper'


RSpec.describe "Giphy Service" do
  describe "Getting a connection with Faraday" do

    it "does not error out when used" do
      service = GiphyService.new
      response = service.get_gif

    end

  end
end
