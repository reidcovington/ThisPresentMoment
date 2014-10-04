class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Unable to create user."
      redirect_to root_path
    end
  end

  def login
    @user = User.find_and_auth(user_params[:email], user_params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Unable to log in."
      redirect_to root_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
