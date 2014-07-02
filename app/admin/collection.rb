ActiveAdmin.register Collection do

  index do
    selectable_column
    column :name
    column :description
    actions
  end

  show do
    attributes_table do
      row :name, :as => :string
      row :description, :as => :string
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
