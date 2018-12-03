class RemoveCategoryFromStores < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :category
  end
end
