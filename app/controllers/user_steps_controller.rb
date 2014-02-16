class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :choose_game, :account_type  
  
  def show
    render_wizard
  end
end
