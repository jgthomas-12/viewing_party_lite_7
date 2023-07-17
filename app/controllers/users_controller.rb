class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create

    user = User.create(user_params)
    if user.save
      flash[:success] = "Welcome, #{user_params[:name]}"
      redirect_to "/users/#{user.id}"
    else
      redirect_to "/register"
      flash[:alert] = "Name and email must be valid"
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end