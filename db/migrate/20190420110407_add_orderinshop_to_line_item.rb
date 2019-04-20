class AddOrderinshopToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :orderinshop, foreign_key: true
  end
end
