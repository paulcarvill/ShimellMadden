json.array!(@items) do |item|
  json.extract! item, :id, :homepage, :weight

  json.name item.name
  json.date item.date
  json.small item.img_url_small
  json.large item.img_url_large
  json.archived item.archived
  json.groupType item.group.grouptype unless item.group.nil?
  json.groupName item.group.name unless item.group.nil?
  json.groupId item.group.id unless item.group.nil?
  
end
