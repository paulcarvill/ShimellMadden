json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :price, :shipping, :shopifyid, :homepage, :image_style_one_url, :image_style_two_url, :image_style_three_url

  if item.collection != nil
  	json.isCollection true
  	json.collectionName item.collection.name
  	json.collectionId item.collection.id
  else
  	json.isCollection false
  end

  if item.project != nil
  	json.isProject true
  	json.projectName item.project.name
  	json.projectId item.project.id
  else
  	json.isProject false
  end

  json.url item_url(item, format: :json)
end
