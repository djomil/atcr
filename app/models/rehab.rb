class Rehab < ApplicationRecord
    validates :name, :address, :service, :picture_url, :price, presence: true  
end

