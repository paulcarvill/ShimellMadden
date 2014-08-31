ActiveAdmin.register Stockist do
  
  menu priority: 4, label: "Stockists"

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :address1, :as => :string
      f.input :address2, :as => :string
      f.input :address3, :as => :string
      f.input :address4, :as => :string
      f.input :website, :as => :string
    end

    f.actions
  end

  config.filters = false

  permit_params :name, :address1, :address2, :address3, :address4, :website
end