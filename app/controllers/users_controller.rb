class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
    render :layout => 'signup'
  end
  
  def create
    # Cookies::CookieOverflow
    @user = User.new(user_params)
    if @user.save
      sign_in(@user, 1)
      redirect_to @user
    else
      flash[:errors] = @user.errors
      redirect_to signup_path
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end

  private
    
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :alias)
  end
end
