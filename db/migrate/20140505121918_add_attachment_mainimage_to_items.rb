class AddAttachmentMainimageToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :imageStyleOne
      t.attachment :imageStyleTwo
      t.attachment :imageStyleThree
    end
  end

  def self.down
    drop_attached_file :items, :imageStyleOne
    drop_attached_file :items, :imageStyleTwo
    drop_attached_file :items, :imageStyleThree
  end
end
