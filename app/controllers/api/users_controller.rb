class Api::UsersController < ApplicationController
  def create
    user = User.create(params[:user].permit(:email, :password))
    render json: { user: user}, status: 201
  end
end
