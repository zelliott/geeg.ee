class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :choose_game, :account_type  
  layout 'signup'
  
  def show
    @user = current_user
    render_wizard
  end
  
  def update
    @user = current_user
    render_wizard @user
  end
  
  private
  def redirect_to_finish_wizard
    redirect_to @user, notice: "Thanks for signing up."
  end
end
