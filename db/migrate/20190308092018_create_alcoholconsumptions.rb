class CreateAlcoholconsumptions < ActiveRecord::Migration[5.2]
  def change
    create_table :alcoholconsumptions do |t|
      t.string :entity
      t.string :code
      t.string :year
      t.decimal :consumption
      t.float :latitude
      t.float :longitude
      t.float :longitude

      t.timestamps
    end
  end
end
