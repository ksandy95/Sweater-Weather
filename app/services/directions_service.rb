class DirectionsService

# get directions from one place to another.
# get travel time between those places

# api is failing to separate after locations are parsed out from initial get conn
  #
  # def travel_time(locations)
  #   response = conn.get("origin=#{locations[:origin]}&destination=#{locations[:destination]}&departure_time=now&key=#{ENV['DIRECTIONS_API']}")
  #   body = response.body
  #   
  #   json = JSON.parse(body, symbolize_names:true)
  #   json[:routes][0][:legs][0][:duration]
  # end
  #
  # def conn
  #   Faraday.new(url: "https://maps.googleapis.com/maps/api/directions/json?")
  # end

end
