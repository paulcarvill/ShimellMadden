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
    column :created_at
    column :updated_at
    row "Categories" do |item|
         (item.categories.map{ |p| p.name }).join(', ').html_safe
    end
  end

 
end
