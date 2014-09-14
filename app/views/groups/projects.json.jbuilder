json.array!(@projects) do |project|
  json.extract! project, :id, :name
  json.itemImage project.images[0].itemImage
end