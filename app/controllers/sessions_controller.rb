class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_name(user_session_params.downcase)
    if user && !user.nil?
      session[:user_id] = user.id
      flash[:success] = 'You have logged in!'
      redirect_to root_path
    else
      flash[:notice] = 'Account doesn\'t exist, please sign up'
      redirect_to sign_up_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have logged out'
    redirect_to root_path
  end

  private

  def user_session_params
    params.require(:session).permit(:name)
  end
end
