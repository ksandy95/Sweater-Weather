class Api::V1::AntipodeController < ApplicationController

  def show
    location = params[:location]
    facade = AntipodeFacade.new(location)
    forecast = facade.get_antipode_forecast(location)
    binding.pry
  end

end
