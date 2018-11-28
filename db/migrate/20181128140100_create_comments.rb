class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :store_id
      t.string :comment
      t.integer :rate

      t.timestamps
    end
  end
end
