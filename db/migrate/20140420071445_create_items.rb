class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.float :price
      t.float :shipping
      t.text :shopifyid

      t.integer :collection_id
      t.integer :project_id

      t.timestamps
    end
  end
end
