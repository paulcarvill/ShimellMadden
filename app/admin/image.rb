ActiveAdmin.register Image do

  menu priority: 5, label: "Images"

  index do
    selectable_column
    column :id

    actions
  end

  show do
    h3 image.id
    (if image.large? then image_tag(image.large.url(:thumb)) else content_tag(:p, "No large image yet") end )
    (if image.small? then image_tag(image.small.url(:thumb)) else content_tag(:span, "No small image yet") end )
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
      
      
      f.input :group, :label => "Collection/Project"
      p.input :large, :label => 'big image', :hint => (if p.object.large? then f.template.image_tag(p.object.large.url(:thumb)) else p.template.content_tag(:span, "No large image yet") end )
      p.input :small,  :label => 'small image', :hint => (if p.object.small? then f.template.image_tag(p.object.small.url(:thumb)) else p.template.content_tag(:span, "No small image yet") end )
      
    end

    f.actions
  end

  config.filters = false
  permit_params :imageStyleOne, :name, :description, :homepage, :archive, :collection_id, :project_id, category_ids: []
end
