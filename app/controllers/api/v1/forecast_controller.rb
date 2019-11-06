class Api::V1::ForecastController < ApplicationController

  def show
    forecast = ForecastFacade.new(params[:location]).get_forecast(params[:location])
    
    render json: ForecastSerializer.new(Forecast.new(forecast))
  end

end
