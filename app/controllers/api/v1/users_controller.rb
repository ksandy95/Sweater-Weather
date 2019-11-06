class Api::V1::UsersController < ApplicationController

  def create
    user = User.create!(params['email'], params['password'], params['password_confirmation'])
  end

end
