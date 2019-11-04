class AntipodeService

  def get_antipode(coordinates)
    response = conn.get("?lat=#{coordinates[:lat]}&lng=#{coordinates[:lng]}")
    body = response.body
    json_d = JSON.parse(body, symbolize_names: true)
    json_d[:data][:attributes]
  end

  def conn
    Faraday.new(url: "https://amypode.herokuapp.com/api/v1/antipodes",
      headers: {'api_key' => ENV["ANTIPODE_API"]}) do |f|
      f.adapter Faraday.default_adapter
    end
  end

end
