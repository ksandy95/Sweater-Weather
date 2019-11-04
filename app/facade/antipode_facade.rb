class AntipodeFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def get_antipode_forecast(location)
    binding.pry
    geocode_service = GeocodeService.new
    coordinates = geocode_service.location_coordinates(location)

    antipode_service = AntipodeService.new
    antipode_coordinates = antipode_service.get_antipode(coordinates)

    darksky_service = DarkSkyService.new
    darksky_service.forecast(antipode_coordinates)
  end


end
