class GeocodeService

  def location_coordinates(location)
    response = conn.get("?address=#{location}&key=#{ENV['GEOCODE_API']}")
    json_d = JSON.parse(response.body, symbolize_names: true)
    json_d[:results][0][:geometry][:location]
  end

  def reverse_lookup
    # latlng=40.714224,-73.961452&key=YOUR_API_KEY
    
  end

  def conn
    Faraday.new(url: "https://maps.googleapis.com/maps/api/geocode/json?") do |f|
      f.adapter Faraday.default_adapter
    end
  end

end
