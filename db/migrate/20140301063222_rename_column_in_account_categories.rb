class RenameColumnInAccountCategories < ActiveRecord::Migration
  def change
    rename_column :account_categories, :type, :category
  end
end
