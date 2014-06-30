json.array!(@blogs) do |blog|
  json.extract! blog, :id, :headline, :body

  json.created_at blog.created_at.strftime("%d.%m.%Y")
end