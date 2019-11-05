class GiphyService

  def get_gif(search)
    conn.get("/search?q=#{search}&api_key=#{ENV['GIPHY_API']}")
  end

  def conn
    Faraday.new(url: "https://api.giphy.com/v1/gifs") do |f|
      f.adapter Faraday.default_adapter
    end
  end

end
