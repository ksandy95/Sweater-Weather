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

  def hourly_data_first_10
    forecast_data
    parsed = JSON.parse(forecast_data.body, symbolize_names: true)
    parsed[:hourly][:data][0..9]
  end

  def time_array
    hourly_data_first_10.map do |forecast|
      forecast[:time]
    end
  end

  def summary_array
    hourly_data_first_10.map do |forecast|
      forecast[:summary]
    end
  end

  def gifs_list
    gif_service = GiphyService.new
    gifs_list = summary_array.map do |summary|
      gif_service.get_gif(summary)
    end
  end

  def gif_url_array
    gifs_list.map do |raw_data|
      raw = raw_data.body
      parsed = JSON.parse(raw, symbolize_names: true)
      parsed[:data][0][:url]
    end
  end

  def zipped_array
    array = time_array.zip(summary_array)
    new_array = array.zip(gif_url_array)
    new_array.map do |arr|
      arr.flatten
    end
  end

  def gif_forecast
    zipped_array
  end

end
