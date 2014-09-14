class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.integer :group_id
      t.text :name
      t.text :description
      t.attachment :itemImage
      t.boolean :homepage
      t.text :itemImage_meta
      t.timestamps
    end
  end
end
