class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.binary :image
      t.float :price
      t.float :shipping
      t.string :shopifyid

      t.timestamps
    end
  end
end
