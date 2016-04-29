json.array!(@orders) do |order|
  json.extract! order, :id, :date_of_order, :user_id
  json.url order_url(order, format: :json)
end
