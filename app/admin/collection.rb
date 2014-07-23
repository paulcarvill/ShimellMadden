ActiveAdmin.register Collection do

  menu priority: 2, label: "Collections"

  index do
    selectable_column
    column :name
    column :description
    column :shopifyId
    actions
  end

  show do
    attributes_table do
      row :name, :as => :string
      row :description, :as => :string
      row :shopifyId, :as => :string
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :description, :as => :string
      f.input :shopifyId, :as => :string
    end
    f.actions
  end

  config.filters = false
  permit_params :name, :description, :shopifyId
end
