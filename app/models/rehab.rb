class Rehab < ApplicationRecord
    has_many :line_items
    has_many :orderinshops, through: :line_items
       before_destroy :ensure_not_referenced_by_any_line_item  
    
    validates :name, :address, :service, :picture_url, :price, presence: true  
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :name, uniqueness: true
    validates :picture_url, allow_blank: true, format: {
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}

#    #    has_and_belongs_to_many :alcoholconsumption

        
    private
    
    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort
            end
    end
end

