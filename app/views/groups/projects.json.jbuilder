json.array!(@projects) do |project|


  json.extract! project, :id, :name, :date, :created_at
  json.large project.images[0].img_url_large
  json.itemImage project.images[0].itemImage
  json.weight project.images[0].weight
end