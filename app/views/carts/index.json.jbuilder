json.array!(@carts) do |cart|
  json.extract! cart, :id, :message_id, :total_price, :delivery_date, :products_count, :currency, :treated, :treated_date
  json.url cart_url(cart, format: :json)
end
