class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.float :price
      t.float :shipping
      t.string :shopifyid

      t.integer :collection_id
      t.integer :project_id

      t.timestamps
    end
  end
end
