json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :large, :small

  
  json.collectionName item.collection.name
  json.collectionId item.collection.id
  
  json.url item_url(item, format: :json)
end
