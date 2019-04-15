class Rehab < ApplicationRecord
    validates :name, :address, :service, :picture_url, :price, presence: true  
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :name, uniqueness: true
    validates :picture_url, allow_blank: true, format: {
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}
    has_and_belongs_to_many: alcoholconsumption
end

