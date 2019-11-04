class DirectionsService

# get directions from one place to another.
# get travel time between those places
  def travel_time(origin, destination)
    response = conn.get("origin=#{origin}&destination=#{destination}&departure_time=now&key=#{ENV['DIRECTIONS_API']}")
    body = response.body
    json = JSON.parse(body, symbolize_names:true)
    json[:routes][0][:legs][0][:duration]
  end

  def conn
    Faraday.get "https://maps.googleapis.com/maps/api/directions/json?"
  end

end
