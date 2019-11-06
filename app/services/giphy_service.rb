# frozen_string_literal: true

class GiphyService
  def get_gif(search)
    Faraday.get("https://api.giphy.com/v1/gifs/search?q=#{search}&api_key=#{ENV['GIPHY_API']}")
  end
end
