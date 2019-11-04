class Antipode < ApplicationRecord


  def initialize(params)
    @location_name = params[:location_name]
    @forecast = params[:forecast]
    @summary = params[:forecast][:summary]
    @current_temperature = params[:forecast][:current_temperature]
    @search_location = params[:search_location]
  end
end
