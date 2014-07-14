class AddImageToBlog < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :blogImage1
      t.attachment :blogImage2
      t.attachment :blogImage3
    end
  end

  def self.down
    drop_attached_file :blogs, :blogImage1
    drop_attached_file :blogs, :blogImage2
    drop_attached_file :blogs, :blogImage3
  end
end
