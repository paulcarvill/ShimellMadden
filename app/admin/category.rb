ActiveAdmin.register Category do

	index do
		selectable_column
		column :name
	end

	show do
	    attributes_table do
	      row :name
	    end
	end

  	config.filters = false  
  	permit_params :name
end
