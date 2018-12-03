class AddCategoryIdToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :category_id, :integer
  end
end
