json.array!(@orderitems) do |orderitem|
  json.extract! orderitem, :id, :item_id, :product, :colour, :description, :quantity, :price, :order_id
  json.url orderitem_url(orderitem, format: :json)
end
