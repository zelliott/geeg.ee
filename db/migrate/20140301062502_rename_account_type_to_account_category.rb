class RenameAccountTypeToAccountCategory < ActiveRecord::Migration
  def change
    rename_table :account_types, :account_categories
  end
end
