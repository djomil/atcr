class CreateRehabs < ActiveRecord::Migration[5.2]
  def change
    create_table :rehabs do |t|
      t.string :name
      t.string :address
      t.text :service
      t.string :picture_url
      t.decimal :price

      t.timestamps
    end
  end
end
