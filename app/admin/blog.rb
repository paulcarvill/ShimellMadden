ActiveAdmin.register Blog, as: "News" do
  index do
    column :headline
    column :body do |news|
      simple_format news.body
    end
    column :img do |news|
      if news.blogImage?
          image_tag(news.blogImage.url, width: '50%')
      end
    end
    actions
  end

  show :title => :headline do
    div do
      h3 news.headline
    end
    div do
        simple_format news.body
    end
    if news.blogImage?
      div do
          image_tag(news.blogImage.url, width: '50%')
      end
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :headline
      f.input :body, as: :html_editor
      f.input :blogImage, :as => :file, :hint => (f.template.image_tag(f.object.blogImage.url) if f.object.blogImage?)
    end
    f.actions
  end

  config.filters = false
  permit_params :headline, :body, :blogImage
end
