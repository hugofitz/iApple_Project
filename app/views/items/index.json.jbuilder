json.array!(@items) do |item|
  json.extract! item, :id, :product, :description, :price, :image, :category, :colour
  json.url item_url(item, format: :json)
end
