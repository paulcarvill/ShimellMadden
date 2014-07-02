ActiveAdmin.register Item do

  index do
    selectable_column
    column :name do |item|
      link_to item.name, admin_item_path(item)
    end
    column :description
    column :price
    column "Shopfiy ID", :shopifyid
    column "Shipping cost", :shipping
    column :collection_id
    column :project_id
    column "Show on homepage?", :homepage
    column "Archived?", :archive
    column "Category" do |item|
        (item.categories.map{ |p| p.name }).join(', ').html_safe
    end

    actions
  end

  show :title => :name do
    attributes_table do
      row :name
      row :description
      row :price
      row :shopifyid
      row :shipping
      row :collection_id
      row :project_id
      row :homepage
      row :archive
      row "Category" do |item|
        (item.categories.map{ |p| p.name }).join(', ').html_safe
      end
      row "image" do |item|
        if item.imageStyleOne?
          div do
              image_tag(item.imageStyleOne.url, width: '50%')
          end
        end
      end
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
      f.input :price
      f.input :shopifyid, :as => :string
      f.input :shipping
      f.input :homepage
      f.input :archive
      f.input :collection
      f.input :project
      f.input :categories
      f.input :imageStyleOne, :as => :file, :hint => (f.template.image_tag(f.object.imageStyleOne.url, width: '50%') if f.object.imageStyleOne?)
    end

    f.actions
  end

  config.filters = false

  permit_params :imageStyleOne, :name, :description, :price, :shopifyid, :shipping, :homepage, :archive, :collection_id, :project_id, category_ids: []
 
end
