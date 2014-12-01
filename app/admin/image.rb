ActiveAdmin.register Image do

  menu priority: 5, label: "Images"

  index do
    selectable_column
    column :id
    column :date
    column :archived
    column :group
    column "image" do |image|
      image_tag(image.itemImage.url(:small), width: '50%')
    end
    column :homepage
    column :tile
    column "dimensions" do |image|
      "w: #{image.itemImage.width}, h: #{image.itemImage.height}"
    end
    actions
  end

  show do
    h3 image.id
    h3 image.name
    h3 image.description
    h3 image.archived
    if image.group then h3 image.group.name end
    h3 image.date
    div do
        image_tag(image.itemImage.url, width: '50%')
    end
    h3 image.itemImage.width
    h3 image.itemImage.height
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
      
      
      f.input :group, :label => "Collection/Project"
      f.input :itemImage,  :label => 'image', :hint => (if image.itemImage? then image_tag(image.itemImage.url(:small)) else content_tag(:span, "No image yet") end )
      f.input :homepage, :as=>:boolean, :required => false, :label => 'Add to homepage carousel?'
      f.input :categories
      f.input :date
      f.input :archived
      f.input :tile
      f.inputs 'Weight image to top or bottom?' do
        f.input :weight, :collection => Image::OPTIONS, :as => :select, include_blank: false
      end
    end

    f.actions
  end

  filter :group

  config.filters = true
  permit_params :itemImage, :date, :name, :archived, :description, :homepage, :archive, :group_id, :tile, :weight, category_ids: []
end
