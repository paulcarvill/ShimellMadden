class AddAttachmentMainimageToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :mainImage
      t.attachment :squareImage
      t.attachment :itemsImage
    end
  end

  def self.down
    drop_attached_file :items, :mainImage
    drop_attached_file :items, :squareImage
    drop_attached_file :items, :itemsImage
  end
end
