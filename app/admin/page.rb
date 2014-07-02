ActiveAdmin.register Page do
  index do
    selectable_column
    column :id
    column :name

    # show formatted html content
    column :content do |page|
      simple_format page.content
    end

    actions
  end

  show do
    h3 page.name
    div do
        simple_format page.content
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :name, :as => :string
      f.input :content, as: :html_editor
    end
    f.actions
  end

  config.filters = false
  permit_params :name, :content
end
