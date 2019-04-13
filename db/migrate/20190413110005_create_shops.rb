class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :country
      t.text :service
      t.string :picture_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
