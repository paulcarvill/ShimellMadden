ActiveAdmin.register Blog, as: "News" do
  index do
    column :headline
    column :body do |news|
      simple_format news.body
    end

    actions
  end

  show :title => :headline do
    h3 news.headline
    div do
        simple_format news.body
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :headline
      f.input :body, as: :html_editor
    end
    f.actions
  end

  config.filters = false
  permit_params :headline, :body
end
