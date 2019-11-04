class Api::V1::ForecastController < ApplicationController

  # shows forecast data for a specific location
  def show
    data = ForecastFacade.new(params[:location])
    forecast = data.get_forecast(data.location)
  end

end
