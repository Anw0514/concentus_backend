class UsersController < ApplicationController

  before_action :find_user, only: [:info]

  def index
    render json: User.index_serializer
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user.login_serializer, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  def check_email
    early_bird = User.all.find do |user|
      user.email == params[:email]
    end
    if !!early_bird
      render json: { error: "There is already a user with that email." }, status: :accepted
    else
      render json: { message: "proceed"}, status: :accepted
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
