class AddTileOptionToImage < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.boolean :tile
    end
  end
end