ActiveAdmin.register Region do
  

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
    end

    f.actions
  end

  config.filters = false

  permit_params :name
end