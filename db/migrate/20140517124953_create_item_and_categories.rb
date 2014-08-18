class CreateItemAndCategories < ActiveRecord::Migration
  def change
    create_table :categories_images, id: false do |t|
      t.integer :category_id
      t.integer :image_id
    end
  end
end
