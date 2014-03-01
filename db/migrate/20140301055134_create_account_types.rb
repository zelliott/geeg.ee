class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.references :user, index: true
      t.string :type

      t.timestamps
    end
  end
end
