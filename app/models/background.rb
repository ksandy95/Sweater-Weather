# frozen_string_literal: true

class Background
  attr_reader :id, :url, :data

  def initialize(data)
    @data = data[:results][0]
    @id = data[:results][0][:id]
    @url = data[:results][0][:urls][:raw]
  end
end
