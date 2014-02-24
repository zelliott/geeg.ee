class AddTimestampsToSocialAccounts < ActiveRecord::Migration
  def change
    add_column :social_accounts, :created_at, :datetime
    add_column :social_accounts, :updated_at, :datetime
  end
end
