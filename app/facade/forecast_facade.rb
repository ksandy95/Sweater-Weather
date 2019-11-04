class ForecastFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def get_forecast(location)
    geocode_service = GeocodeService.new
    coordinates = geocode_service.location_coordinates(location)

    darksky_service = DarkSkyService.new
    location_forecast = darksky_service.forecast(coordinates)
  end

end
