ActiveAdmin.register Region do
  
  index do
	selectable_column
	column :name
	actions
  end

  show do
    attributes_table do
      row :name
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
    end

    f.actions
  end

  config.filters = false

  permit_params :name
end