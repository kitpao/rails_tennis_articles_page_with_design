class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.name.downcase!

    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'User created succesfully'
      redirect_to root_path
    else
      flash.now[:danger] = 'Something went wrong, please check the errors'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
