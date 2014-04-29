json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :image, :price, :shipping, :shopifyid
  json.url item_url(item, format: :json)
end
