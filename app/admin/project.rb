ActiveAdmin.register Project do
  
  menu priority: 6, label: "Projects"

  index do
  	selectable_column
    column :id
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

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
    end
    f.actions
  end

  config.filters = false
  permit_params :name, :description
  
end
