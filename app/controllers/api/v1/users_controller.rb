class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(email: user_params[:email],
                     password: user_params[:password],
                     password_confirmation: user_params[:password_confirmation],
                     api_key: ApiKey.new.key)
    user.save
    render json: UserSerializer.new(user)
  end

  def user_params
    params.permit(params[:email], params[:password], params[:password_confirmation])
  end

end
