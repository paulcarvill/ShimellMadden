ActiveAdmin.register Group do

  menu priority: 2, label: "Collections/Projects"

  index do
    selectable_column
    column :name
    column :description
    column :shopifyId
    actions
  end

  show do
    attributes_table do
      row :name, :as => :string
      row :description, :as => :string
      row :archived, :as => :string
      row :grouptype, :as => :string
      row "Shopify link", :shopifyId, :as => :string
      group.images.each_with_index do |i, index|
          row "Image #{index}" do
            columns do
              column do
                (if i.itemImage? then image_tag(i.itemImage.url(:small)) else content_tag(:p, "No image yet") end )
              end
            end
          end
      end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs 'Collection/Project details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
      f.input :shopifyId, :as => :string
    end

    f.inputs 'Group is a Collection or Project?' do
      f.input :grouptype, :collection => Group::OPTIONS, :as => :radio
    end

    f.inputs 'Add to archive?' do
      f.input :archived, :as => :boolean, :label => 'Archived?'
    end

    f.inputs "Collection images" do
      f.has_many :images do |p|
        p.input :itemImage,  :label => 'image', :hint => (if p.object.itemImage? then f.template.image_tag(p.object.itemImage.url(:small)) else p.template.content_tag(:span, "No image yet") end )
        p.input :_destroy, :as=>:boolean, :required => false, :label => 'Remove image'
        p.input :homepage, :as=>:boolean, :required => false, :label => 'Add to homepage carousel?'
        p.input :categories
        end
      end

    

    f.actions
  end

  config.filters = false
  permit_params :name, :description, :shopifyId, :archived, images_attributes: [:id, :homepage, :large, :small, :_destroy, category_ids: []]
end
