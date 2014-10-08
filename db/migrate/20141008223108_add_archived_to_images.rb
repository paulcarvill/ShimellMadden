class AddArchivedToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.boolean :archived
    end
  end
end
