class Api::V1::ForecastController < ApplicationController

  # shows forecast data for a specific location
  def show
    forecast = ForecastFacade.new(params[:location]).get_forecast(params[:location])
    render json: ForecastSerializer.new(Forecast.new(forecast))
  end

end
