class BackgroundService

  def initialize(location)
    @location = location
  end

  def images
    response = conn.get('/search/photos')
    parse(response)
  end

  def conn
    Faraday.new(url: 'https://api.unsplash.com') do |f|
      f.params['client_id'] = ENV['UNSPLASH_API']
      f.params['query'] = @location.split(',')[0]
      f.adapter Faraday.default_adapter
    end
  end

end
