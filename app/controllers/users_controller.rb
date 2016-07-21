class UsersController < ApplicationController
  def new
    if logged_in?
	redirect_to root_path
    else
    	@user = User.new
    end
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
  end
end
