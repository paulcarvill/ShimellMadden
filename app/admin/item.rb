ActiveAdmin.register Item do

  index do
    column :name
    column :description
    column :price
    column :shopifyid
    column :shipping
    column :collection_id
    column :project_id
    column :homepage
    column :archive
    column "Category" do |item|
        (item.categories.map{ |p| p.name }).join(', ').html_safe
    end

    actions
  end

  show do
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
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name
      f.input :description
      f.input :price
      f.input :shopifyid
      f.input :shipping
      f.input :homepage
      f.input :archive
      f.input :collection
      f.input :project
      f.input :categories
    end

    f.actions
  end

  config.filters = false

  permit_params :name, :description, :price, :shopifyid, :shipping, :homepage, :archive, :collection_id, :project_id, category_ids: []
 
end
