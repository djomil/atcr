class LineItem < ApplicationRecord
    belongs_to :orderinshop, optional: true
    belongs_to :rehab
    belongs_to :cart
   
    def total_price
        rehab.price * quantity
    end
    
end

