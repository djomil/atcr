class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    
    def add_rehab(rehab)
        current_item = line_items.find_by(rehab_id: rehab.id)
        if current_item
        current_item.quantity +=1
        else
        current_item = line_items.build(rehab_id: rehab.id)
        end
        current_item
    end

    def total_price
        line_items.to_a.sum { |item| item.total_price }
    end
    
    
end
