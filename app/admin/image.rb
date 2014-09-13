ActiveAdmin.register Image do

  menu priority: 5, label: "Images"

  index do
    selectable_column
    column :id
    column "image" do |image|
      image_tag(image.large.url(:thumb), width: '50%')
    end
    column :homepage
    actions
  end

  show do
    h3 image.id
    h3 image.name
    h3 image.description
    
    if image.large?
      div do
          image_tag(image.large.url, width: '50%')
      end
    end
    
    if image.small?
      div do
          image_tag(image.small.url, width: '50%')
      end
    end

    # (if image.large? then image_tag(image.large.url(:thumb)) else content_tag(:p, "No large image yet") end )
    # (if image.small? then image_tag(image.small.url(:thumb)) else content_tag(:span, "No small image yet") end )
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
      
      
      f.input :group, :label => "Collection/Project"
      f.input :large, :label => 'big image', :hint => (if image.large then image_tag(image.large.url(:thumb)) else content_tag(:span, "No large image yet") end )
      f.input :small,  :label => 'small image', :hint => (if image.small? then image_tag(image.small.url(:thumb)) else content_tag(:span, "No small image yet") end )
      f.input :homepage, :as=>:boolean, :required => false, :label => 'Add to homepage carousel?'
      f.input :categories
    end

    f.actions
  end

  config.filters = false
  permit_params :imageStyleOne, :name, :description, :homepage, :archive, :collection_id, :project_id, category_ids: []
end
