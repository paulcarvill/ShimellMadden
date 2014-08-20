json.array!(@projects) do |project|
  json.extract! project, :id, :name
  json.large project.images[0].large
  json.small project.images[0].small
end