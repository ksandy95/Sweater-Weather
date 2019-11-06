class Gif

  attr_reader :time, :summary, :url, :id

  def initialize(gif_array)
    @id = 0
    @time = gif_array[0]
    @summary = gif_array[1]
    @url = gif_array[2]
  end

end
