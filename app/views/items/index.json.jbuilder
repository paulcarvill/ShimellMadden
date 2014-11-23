json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :weight

  json.small item.img_url_small
  json.large item.img_url_large
  json.archived item.archived
  json.groupArchived item.group.archived
  json.groupType item.group.grouptype
  json.groupName item.group.name
  json.groupId item.group.id
  
end
