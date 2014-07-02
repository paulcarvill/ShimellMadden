ActiveAdmin.register Project do
  index do
    column :id
    column :name
    column :description

    actions
  end

  config.filters = false
  permit_params :name, :description
  
end
