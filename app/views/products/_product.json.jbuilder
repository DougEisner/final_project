json.extract! product, :id, :title, :developer, :email, :institution, :category, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
json.image_url product.image.url(:medium)
