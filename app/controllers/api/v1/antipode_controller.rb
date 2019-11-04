class Api::V1::AntipodeController < ApplicationController

  def show
    location = params[:location]
    facade = AntipodeFacade.new(location)
  end

end
