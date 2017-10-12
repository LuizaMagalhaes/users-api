class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
  end

  def new
    @user = User.new
  end

  def show
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if  @user.update(user_params)
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.status == "inactive"
      @user.destroy
      flash[:success] = "User deleted with success"
    else
      flash[:notice] = "An active user cannot be deleted"
    end
    redirect_to users_path
  end

  def activate
    @user = User.find(params[:id])
    @user.activate
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :cpf, :status)
  end
end
