# frozen_string_literal: true

class DarkSkyService
  def forecast(geo_coordinates)
    response = conn.get("/forecast/#{ENV['DARKSKY_API']}/#{geo_coordinates[:lat]},#{geo_coordinates.values.last}")
  end

  def conn
    Faraday.new(url: 'https://api.darksky.net') do |f|
      f.adapter Faraday.default_adapter
    end
  end
end
