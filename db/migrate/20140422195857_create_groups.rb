class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :name
      t.text :description
      t.text :shopifyId
      t.string :grouptype, :default => "Collection"
      t.boolean :archived, :default => false
      t.timestamps
    end
  end
end
