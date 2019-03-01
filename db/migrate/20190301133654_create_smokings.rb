class CreateSmokings < ActiveRecord::Migration[5.2]
  def change
    create_table :smokings do |t|
      t.string :entity
      t.string :code
      t.string :year
      t.decimal :upper_bound
      t.decimal :lower_bound
      t.decimal :estimated_prevalence

      t.timestamps
    end
  end
end
