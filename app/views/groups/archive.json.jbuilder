json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :large, :small

  json.height item.large.height
  json.width item.large.width

  json.extract! item, :group

end