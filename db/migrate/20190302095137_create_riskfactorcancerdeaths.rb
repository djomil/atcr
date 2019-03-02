class CreateRiskfactorcancerdeaths < ActiveRecord::Migration[5.2]
  def change
    create_table :riskfactorcancerdeaths do |t|
      t.string :cause
      t.string :year
      t.decimal :share_deaths

      t.timestamps
    end
  end
end
