class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.text :name
      t.text :description
      t.text :shopifyId
      t.text :grouptype
      t.timestamps
    end
  end
end
