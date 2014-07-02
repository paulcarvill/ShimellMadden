ActiveAdmin.register Page do
  index do
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

  config.filters = false

  permit_params :name, :content
end
