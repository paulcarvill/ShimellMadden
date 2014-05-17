class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :headline
      t.text :body

      t.timestamps
    end
  end
end
