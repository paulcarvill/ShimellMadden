class AddAttachmentMainimageToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :mainImage
    end
  end

  def self.down
    drop_attached_file :items, :mainImage
  end
end
