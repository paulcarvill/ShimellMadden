json.array!(@projects) do |project|


  json.extract! project, :id, :name
  json.large project.images[0].img_url_large
  json.itemImage project.images[0].itemImage
end