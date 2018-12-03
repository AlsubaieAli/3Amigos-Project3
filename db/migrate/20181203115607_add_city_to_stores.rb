class AddCityToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :city, :string
    remove_column :stores, :sub_category
  end
end
