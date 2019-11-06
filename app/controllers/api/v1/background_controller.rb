class Api::V1::BackgroundController < ApplicationController

  def show
    data_one = BackgroundService.new(params[:location]).images
    data = JSON.parse(data_one.body, symbolize_names: true)
    render json: BackgroundSerializer.new(Background.new(data))
  end

end
