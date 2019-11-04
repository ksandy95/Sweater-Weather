class DarkSkyService

  # Example coordinates from docs used here
  def conn
    Faraday.get "https://api.darksky.net/forecast/#{ENV['DARKSKY_API']}/42.3601,-71.0589"
  end

end
