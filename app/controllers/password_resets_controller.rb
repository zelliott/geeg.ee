class PasswordResetsController < ApplicationController
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
    if @user.password_expires_after > Time.now
      redirect_to new_password_reset_path, :alert => "Reset token has expired. Please send a new reset request."
    elsif @user.updateattributes(params[:user])
      redirect_to root_url, :notice => "Your password has been successfully reset."
    else
      render :edit
    end
  end
end
