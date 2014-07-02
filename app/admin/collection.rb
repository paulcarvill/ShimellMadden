ActiveAdmin.register Collection do

  index do
    selectable_column
    column :name
    column :description
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
    end
  end

  config.filters = false
  permit_params :name, :description
end
