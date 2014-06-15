class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.text :name

      t.timestamps
    end
  end
end
