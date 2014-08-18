class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.integer :group_id
      t.text :name
      t.text :description
      t.attachment :large
      t.attachment :small
      t.boolean :homepage
      t.text :large_meta
      t.text :small_meta
      t.timestamps
    end
  end
end
