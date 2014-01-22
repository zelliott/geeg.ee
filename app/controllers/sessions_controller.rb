class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in(user, params[:session][:remember_me])
      redirect_to user
    else
      flash[:error] = "Invalid credentials!"
      redirect_to :back
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end