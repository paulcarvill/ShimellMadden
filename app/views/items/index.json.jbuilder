json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :image, :price, :shipping, :shopifyid, :image_url, :items_image_url
  json.url item_url(item, format: :json)
end
