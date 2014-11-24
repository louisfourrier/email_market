json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :slug, :amazon_url, :product_detail, :url_from_site, :html_content, :html_url, :image_url
  json.url product_url(product, format: :json)
end
