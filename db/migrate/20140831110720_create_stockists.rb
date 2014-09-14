class CreateStockists < ActiveRecord::Migration
  def change
    create_table :stockists do |t|
      t.text :name
      t.text :address1
      t.text :address2
      t.text :address3
      t.text :address4
      t.text :website
      t.integer :region_id
      t.timestamps
    end
  end
end
