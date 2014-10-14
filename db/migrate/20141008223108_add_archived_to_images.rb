class AddArchivedToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.boolean :archived, :default => false
    end
  end
end
