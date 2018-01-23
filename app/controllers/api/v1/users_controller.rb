class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def find_or_create
    @user = User.find_or_create_by(user_params)
    if @user
      render json: @user
    else
      redirect_to action: "create"
    end
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 500
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :theme)
  end

end
