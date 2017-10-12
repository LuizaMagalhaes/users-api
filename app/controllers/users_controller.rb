class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :cpf)
  end
end
