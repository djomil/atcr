class CreateCancerconferences < ActiveRecord::Migration[5.2]
  def change
    create_table :cancerconferences do |t|
      t.string :event
      t.string :location
      t.string :country
      t.float :latitude
      t.float :longitude
      t.date :date

      t.timestamps
    end
  end
end
