class Api::V1::GiphyController < ApplicationController

  def show
    gif_data = GifFacade.new(params[:location]).gif_forecast
    render json: GiphySerializer.new(gif_data).giphy_return
  end

end
