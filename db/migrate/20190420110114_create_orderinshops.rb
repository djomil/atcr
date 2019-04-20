class CreateOrderinshops < ActiveRecord::Migration[5.2]
  def change
    create_table :orderinshops do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
