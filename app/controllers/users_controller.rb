class UsersController < ApplicationController

  before_action :find_user, only: [:info]

  def info
    render json: @user.info_serializer
  end

  private

  def user_params

  end

  def find_user
    @user = User.find(params[:id])
  end
end
