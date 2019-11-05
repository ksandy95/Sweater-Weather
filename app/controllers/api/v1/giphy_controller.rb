class Api::V1::GiphyController < ApplicationController

  def show
    render json: GifFacade.new(params[:location]).gif_forecast
  end

end
