class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.integer :collection_id
      t.attachment :large
      t.attachment :small
      t.boolean :homepage
      t.timestamps
    end
  end
end
