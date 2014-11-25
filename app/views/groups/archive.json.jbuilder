json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :itemImage, :date, :name, :created_at

  json.small item.img_url_small
  json.large item.img_url_large
  json.height item.itemImage.height
  json.width item.itemImage.width

  json.extract! item, :group

end