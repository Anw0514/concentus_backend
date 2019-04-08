class UsersController < ApplicationController

  before_action :find_user, only: [:info]

  def info
    render json: @user.info_serializer
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user.login_serializer, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:email, :name, :zip, :distance, :distance_type, :password, :bio, :avatar)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
