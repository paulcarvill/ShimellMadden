class AddDescriptionToCollection < ActiveRecord::Migration
  def change
  	add_column :collections, :description, :string
  end
end
