class UsersController < ApplicationController
<<<<<<< HEAD
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
        render :layout => 'signup'
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
          sign_in @user
          redirect_to @user
        else
          flash[:errors] = @user.errors
          redirect_to signup_path
        end
=======
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to @user
    else
      flash[:errors] = @user.errors
      redirect_to signup_path
>>>>>>> 65e931d087cfa6398c2cb20418372c29dcb066be
    end
  end

  private

<<<<<<< HEAD
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :alias)
    end
=======
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :alias)
  end
>>>>>>> 65e931d087cfa6398c2cb20418372c29dcb066be
end
