class GeocodeService

  def conn
    Faraday.get "https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GEOCODE_API']}&address=Denver,CO"
  end

end
