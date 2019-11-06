# frozen_string_literal: true

class AntipodeFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def antipode_data(location)
    geocode_service = GeocodeService.new
    coordinates = geocode_service.location_coordinates(location)

    antipode_service = AntipodeService.new
    antipode_coordinates = antipode_service.get_antipode(coordinates)
  end

  def get_antipode_forecast(location)
    antipode_coordinates = antipode_data(location)

    darksky_service = DarkSkyService.new
    darksky_service.forecast(antipode_coordinates[:data][:attributes])
  end

  def parsed_antipode_forecast(location)
    antipode_location_coordinates = antipode_data(location)
    coordinates = antipode_location_coordinates[:data][:attributes]

    geocode_service = GeocodeService.new
    # https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=YOUR_API_KEY
    # silly me forgot to get the reverse lookup. We are running out of time for this challenge
    # but i will continue to work on it by creating the reverse lookup method in
    # my geocode service file.

    body = get_antipode_forecast(location).body
    parsed = JSON.parse(body, symbolize_names: true)
    hash = { search_location: location,
             location_name: antipode_location,
             forecast: parsed[:currently][:summary] }

    # the end of this method needs to return my hash for my object to be created with in my serializer.
  end
end
