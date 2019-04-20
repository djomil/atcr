json.extract! orderinshop, :id, :name, :address, :email, :pay_type, :created_at, :updated_at
json.url orderinshop_url(orderinshop, format: :json)
