class AddDateToNewsStory < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.date :date
    end
  end
end
