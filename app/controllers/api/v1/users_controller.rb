class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(email: params[:email],
                     password: params[:password],
                     api_key: ApiKey.new.key)
    user.save
    render json: UserSerializer.new(user)
  end

end
