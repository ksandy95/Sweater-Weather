require 'rails_helper'

RSpec.describe "Using Forecast Facade" do
  describe "Getting back a forecast" do

    it "Does not error out when called" do
      
      get '/api/v1/forecast?location=denver,co'

    end

  end
end
