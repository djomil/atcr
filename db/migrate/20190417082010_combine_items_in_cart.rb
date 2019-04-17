class CombineItemsInCart < ActiveRecord::Migration[5.2]
  def change
  end
    
    def up
# replace multiple items for a single product in a cart with a
# single item
Cart.all.each do |cart|
# count the number of each product in the cart
sums = cart.line_items.group(:rehab_id).sum(:quantity)
sums.each do |rehab_id, quantity|
if quantity > 1
# remove individual items
cart.line_items.where(rehab_id: rehab_id).delete_all
# replace with a single item
item = cart.line_items.build(rehab_id: rehab_id)
item.quantity = quantity
item.save!
end
end
end
end

end
