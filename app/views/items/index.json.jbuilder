json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :itemImage

  json.archived item.group.archived
  json.groupType item.group.grouptype
  json.groupName item.group.name
  json.groupId item.group.id
  
end
