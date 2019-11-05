class GifFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def geocode_coords
    geocode_service = GeocodeService.new
    coordinates = geocode_service.location_coordinates(@location)
  end

  def forecast_data
    darksky_service = DarkSkyService.new
    location_forecast = darksky_service.forecast(geocode_coords)
  end

  def gif_forecast
    forecast_data
    parsed = JSON.parse(forecast_data.body, symbolize_names: true)
    hourly_data_first_10 = parsed[:hourly][:data][0..9]
    first_10_summary = hourly_data_first_10.map do |forecast|
                          forecast[:summary]
                       end
    gif_service = GiphyService.new

  end

end
