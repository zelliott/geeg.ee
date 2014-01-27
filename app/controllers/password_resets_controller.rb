class PasswordResetsController < ApplicationController
  layout 'sm_app'
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to root_url, :notice => "Please check your email for password reset instructions."
  end
  
  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end
  
  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 1.hours.ago
      redirect_to new_password_reset_path, :alert => "Reset token has expired. Please send a new reset request."
    elsif @user.update_attributes(params[:user].permit(:password, :password_confirmation))
      redirect_to root_url, :notice => "Your password has been successfully reset."
    else
      render :edit
    end
  end
end
