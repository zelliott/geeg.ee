class FixPasswordExpiresAfter < ActiveRecord::Migration
  def change
    rename_column :users, :password_expires_after, :password_reset_sent_at
  end
end
