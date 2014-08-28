ActiveAdmin.register Image do

  menu priority: 5, label: "Images"

  index do
    selectable_column
    column :id

    actions
  end

  show do
    h3 image.id
    
  end

  config.filters = false
  permit_params :imageStyleOne, :name, :description, :homepage, :archive, :collection_id, :project_id, category_ids: []
end
