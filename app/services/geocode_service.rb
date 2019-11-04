class GeocodeService

  def location_coordinates(location)
    response = conn.get("?address=#{location}&key=#{ENV['GEOCODE_API']}")
    json_d = JSON.parse(response.body, symbolize_names: true)
    json_d[:results][0][:geometry][:location]
  end

  def reverse_lookup(location)
    response = conn.get("latlng=#{location[:lat]},#{location[:lng]}&key=#{ENV['GEOCODE_API']}")
  end

  def conn
    Faraday.new(url: "https://maps.googleapis.com/maps/api/geocode/json?") do |f|
      f.adapter Faraday.default_adapter
    end
  end

end
