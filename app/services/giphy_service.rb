class GiphyService

  def get_gif
    
  end

  def conn
    Faraday.new(url: "https://api.giphy.com/v1/gifs/search") do |f|
      f.params['api_key'] = ENV['GIPHY_API']
      f.adapter Faraday.default_adapter
    end
  end

end
