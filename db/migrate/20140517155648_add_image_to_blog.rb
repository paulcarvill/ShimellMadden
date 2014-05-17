class AddImageToBlog < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :blogImage
    end
  end

  def self.down
    drop_attached_file :blogs, :blogImage
  end
end
