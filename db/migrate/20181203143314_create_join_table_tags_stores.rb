class CreateJoinTableTagsStores < ActiveRecord::Migration[5.2]
  def change
    create_join_table :stores, :tags, id: false do |t|
      # t.index [:store_id, :tag_id]
      # t.index [:tag_id, :store_id]
    end
  end
end
