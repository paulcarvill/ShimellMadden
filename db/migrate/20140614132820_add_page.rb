class AddPage < ActiveRecord::Migration
  def change
  	create_table :pages do |t|
      t.string :name
      t.string :content

      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pages, :image
  end
end
