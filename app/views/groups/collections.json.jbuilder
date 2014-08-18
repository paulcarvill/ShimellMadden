json.array!(@collections) do |collection|
  json.extract! collection, :id, :name, :description

  json.items collection.items, :imageStyleOne.url, :image_style_two_url, :image_style_three_url, :id, :name, :description, :price, :shipping, :shopifyid, :project_id, :created_at, :updated_at, :homepage, :archive

  json.url collection_url(collection, format: :json)

  json.collectionItemImage collection.items[0].imageStyleOne.url

end
