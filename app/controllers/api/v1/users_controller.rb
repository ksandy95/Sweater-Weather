class Api::V1::UsersController < ApplicationController

  def create
    user = User.create!(user_params, api_key: ApiKey.new.key)
    render json: UserSerializer.new(user)
  end

  def user_params
    params.permit(params[:email], params[:password], params[:password_confirmation])
  end

end
