json.array!(@blogs) do |blog|
  json.extract! blog, :id, :created_at, :headline, :body
end