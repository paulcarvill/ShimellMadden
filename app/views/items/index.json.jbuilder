json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :price, :shipping, :shopifyid, :image_style_one_url, :image_style_two_url, :image_style_three_url
  json.url item_url(item, format: :json)
end
