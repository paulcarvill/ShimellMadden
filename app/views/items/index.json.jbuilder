json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :large, :small

  json.groupType item.group.grouptype
  json.groupName item.group.name
  json.groupId item.group.id
  
end
