class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if  @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def activate
    @user = User.find(params[:id])
    @user.activate
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :cpf)
  end
end
