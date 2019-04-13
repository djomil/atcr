json.extract! shop, :id, :name, :address, :country, :service, :picture_url, :price, :created_at, :updated_at
json.url shop_url(shop, format: :json)
