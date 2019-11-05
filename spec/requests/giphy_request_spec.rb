require 'rails_helper'

RSpec.describe "Giphy Request" do
  describe "Gifs for a specific locations forecast" do

    it "Gives me back the response I am searching for" do

      get '/api/v1/gifs?location=denver,co'

      expect(response).to be_successful
      result = JSON.parse(response.body, symbolize_names: true)

      expect(result).to be_a Hash
      expect(result[:data]).to be_a Hash
      expect(result[:copyright]).to eq("2019")
      expect(result[:data][:images]).to be_a Array
      expect(result[:data][:images][0]).to be_a Hash
      expect(result[:data][:images][0][:time]).to be_a String
      expect(result[:data][:images][0][:summary]).to be_a String
      expect(result[:data][:images][0][:url]).to be_a String
    end

  end
end




# User Story Objective For Retake
# -------------------------------------------------------------------------------
# You will be building an API that will use weather data from the Dark Sky API
# in order to provide animated GIFs using the Giphy API.
#
# Your endpoint should accept GET requests like this:  `/api/v1/gifs?location=denver,co`
#
# You should use the `search` endpoint for Giphy: https://developers.giphy.com/docs/api/endpoint#search
#
# And it should respond like this:
#
# {
#   data: {
#     images: [
#       {
#         time: "1541487600",
#         summary: "Mostly sunny in the morning.",
#         url: "<GIPHY_URL_GOES_HERE>"
#       },
#       {
#         time: "1541127600",
#         summary: "Partly cloudy in the evening.",
#         url: "<GIPHY_URL_GOES_HERE>"
#       },
#       {
#         time: "2381487600",
#         summary: "Snowy.",
#         url: "<GIPHY_URL_GOES_HERE>"
#       },
#       {
#         time: "1541487600",
#         summary: "Firenado",
#         url: "<GIPHY_URL_GOES_HERE>"
#       },
#       {
#         time: "1541487600",
#         summary: "Corgis because I cant think of other weather",
#         url: "<GIPHY_URL_GOES_HERE>"
#       }
#     ]
#   },
#   copyright: "2019"
# }
#
# Note: Each <GIPHY_URL_GOES_HERE>  is a link to a different gif that is
# dependent on the weather. The time should also be different.
# The above example is provided for guidance about what the general
# structure of the data you are providing should look like. (edited)
#
# developers.giphy.com
# GIPHY Developers
# The GIPHY Developer Portal is how you integrate the world's best GIF API
# into your business, app or project.
