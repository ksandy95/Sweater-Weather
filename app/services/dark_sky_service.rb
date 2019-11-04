class DarkSkyService

  # Example coordinates from docs used here
  def conn(geo_coordinates)
    Faraday.get "https://api.darksky.net/forecast/#{ENV['DARKSKY_API']}/#{geo_coordinates[:lat]}, #{geo_coordinates[:lng]}"
  end

end
