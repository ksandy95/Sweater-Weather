# frozen_string_literal: true

class Api::V1::GiphyController < ApplicationController
  def show
    gif_data = GifFacade.new(params[:location])
    render json: GiphySerializer.new(gif_data)
  end
end
