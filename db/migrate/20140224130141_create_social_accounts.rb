class CreateSocialAccounts < ActiveRecord::Migration
  def change
    create_table :social_accounts do |t|
      t.string :facebook_url
      t.string :twitter_url
      t.string :stream_url
      t.references :user, index: true
    end
  end
end
