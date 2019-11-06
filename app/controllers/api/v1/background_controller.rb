class Api::V1::BackgroundController < ApplicationController

  def show
    data = BackgroundService.new(params[:location]).images
    render json: BackgroundSerializer.new(Background.new(data))
  end

end
