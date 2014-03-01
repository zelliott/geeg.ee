class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @social = @user.social_account
  end
  
  def new
    @user = User.new
    render :layout => 'signup'
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user, 1)
      redirect_to user_steps_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
    end
  end
  
  def edit
    @user = User.find(params[:id])
    if @user.social_account
      @social = @user.social_account
    else
      @social = @user.build_social_account
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
    
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :alias,
                                 social_account_attributes: [:id, :facebook_url, :twitter_url, :stream_url],
                                 videos_attributes: [:id, :url, :_destroy],
                                 account_category_attributes: [:id, :category])
  end
end
