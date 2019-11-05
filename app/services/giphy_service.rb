class GiphyService

  def conn
    Faraday.new(url: "https://api.giphy.com/v1/gifs/search") do |f|
      f.adapter Faraday.default_adapter
    end
  end

end
