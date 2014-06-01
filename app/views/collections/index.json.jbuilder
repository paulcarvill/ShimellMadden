json.array!(@collections) do |collection|
  json.extract! collection, :id, :name

  json.items collection.items, :image_style_one_url, :image_style_two_url, :image_style_three_url, :id, :name, :description, :price, :shipping, :shopifyid, :project_id, :created_at, :updated_at, :homepage, :archive

  json.url collection_url(collection, format: :json)

  json.collectionItemImage collection.items[0].imageStyleOne.url

end
