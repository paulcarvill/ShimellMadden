ActiveAdmin.register Blog, as: "News story" do
  
  menu priority: 4, label: "News"

  index do
    selectable_column
    column :headline
    column :body do |news|
      simple_format news.body
    end
    column :img do |news|
      if news.blogImage1?
          image_tag(news.blogImage1.url, width: '50%')
      else
        content_tag(:span, "No image, will use default placeholder")
      end
    end
    actions
  end

  show do
      attributes_table do
        row :headline
        row :body
        row :img do |news|
          if news.blogImage1?
              image_tag(news.blogImage1.url, width: '50%')
          else
            content_tag(:span, "No image, will use default placeholder")
          end
        end
        row :img do |news|
          if news.blogImage2?
              image_tag(news.blogImage2.url, width: '50%')
          else
            content_tag(:span, "No image, will use default placeholder")
          end
        end
        row :img do |news|
          if news.blogImage3?
              image_tag(news.blogImage3.url, width: '50%')
          else
            content_tag(:span, "No image, will use default placeholder")
          end
        end
      end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :headline, :as => :string
      f.input :body, as: :html_editor
    end

    f.inputs 'Image 1' do
      f.input :blogImage1, :as => :file, :hint => (f.template.image_tag(f.object.blogImage1.url, width: '50%') if f.object.blogImage1?)
      if f.object.blogImage1?
        f.input :blogImage1_delete, :as=>:boolean
      end
    end

    f.inputs 'Image 2' do
      f.input :blogImage2, :as => :file, :hint => (f.template.image_tag(f.object.blogImage2.url, width: '50%') if f.object.blogImage2?)
      if f.object.blogImage2?
        f.input :blogImage2_delete, :as=>:boolean
      end
    end

    f.inputs 'Image 3' do
      f.input :blogImage3, :as => :file, :hint => (f.template.image_tag(f.object.blogImage3.url, width: '50%') if f.object.blogImage3?)
      if f.object.blogImage3?
        f.input :blogImage3_delete, :as=>:boolean
      end
    end

    f.actions
  end

  config.filters = false
  permit_params :headline, :body, :blogImage1, :blogImage2, :blogImage3, :blogImage1_delete, :blogImage2_delete, :blogImage3_delete
end
