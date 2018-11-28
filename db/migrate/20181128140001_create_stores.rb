class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :headline
      t.string :images
      t.decimal :price
      t.string :bio
      t.string :email
      t.text :number
      t.string :website
      t.string :facebook
      t.string :instagram
      t.string :snapchat
      t.string :twitter
      t.string :extra_link
      t.string :category
      t.string :sub_category

      t.timestamps
    end
  end
end
