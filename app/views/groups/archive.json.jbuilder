json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :itemImage

  json.height item.itemImage.height
  json.width item.itemImage.width

  json.extract! item, :group

end