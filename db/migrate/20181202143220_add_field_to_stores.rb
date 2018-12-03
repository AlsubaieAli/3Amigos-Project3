class AddFieldToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :approved, :boolean, default: false
  end
end
