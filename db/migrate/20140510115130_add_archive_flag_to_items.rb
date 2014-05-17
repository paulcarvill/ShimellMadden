class AddArchiveFlagToItems < ActiveRecord::Migration
  def change
  	add_column :items, :archive, :boolean, :null => false, :default => false
  end
end
