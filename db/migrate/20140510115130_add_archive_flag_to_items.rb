class AddArchiveFlagToItems < ActiveRecord::Migration
  def change
  	add_column :items, :archive, :boolean
  end
end
