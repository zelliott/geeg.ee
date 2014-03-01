class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :account_type, :choose_game
  layout 'signup'
  
  def show
    @user = current_user
    @account = @user.build_account_category unless @user.account_category
    render_wizard
  end
  
  def update
    @user = current_user
    @user.attributes = params[:user]
    @game = @user.build_game unless @user.game
    render_wizard @user
  end
  
  private
  def redirect_to_finish_wizard
    redirect_to @user, notice: "Thanks for signing up."
  end
end
