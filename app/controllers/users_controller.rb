class UsersController < ApplicationController

  before_action :find_user, only: [:info]

  def info
    render json: @user.info_serializer
  end

  def create
    @user = user.create(user_params)
    render json: @user
  end

  private

  def user_params

  end

  def find_user
    @user = User.find(params[:id])
  end
end
