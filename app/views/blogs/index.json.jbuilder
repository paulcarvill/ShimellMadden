json.array!(@blogs) do |blog|
  json.extract! blog, :id, :headline, :body

  if blog.blogImage1_file_name
  	json.blogImage1 blog.blogImage1
  end

  if blog.blogImage2_file_name
  	json.blogImage2 blog.blogImage2
  end

  if blog.blogImage3_file_name
  	json.blogImage3 blog.blogImage3
  end

  json.created_at blog.created_at.strftime("%d.%m.%Y")
end