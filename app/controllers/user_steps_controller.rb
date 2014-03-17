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
    @user.update_attributes(user_params)
    @game = @user.build_game unless @user.game
    render_wizard @user
  end
  
  private
  def finish_wizard_path
    user_path(current_user)
  end
  
  def user_params
    params.require(:user).permit(account_category_attributes: [:id, :category],
                                 game_attributes: [:id, :name])
  end
  
end
