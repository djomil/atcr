class LineItem < ApplicationRecord
  belongs_to :rehab
  belongs_to :cart
end
