class AddImageMetaToItem < ActiveRecord::Migration
  def change
  	add_column :items, :imageStyleOne_meta, :text
  end
end
