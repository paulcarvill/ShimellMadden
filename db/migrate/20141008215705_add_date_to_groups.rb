class AddDateToGroups < ActiveRecord::Migration
  def self.up
    change_table :groups do |t|
      t.date :date
    end
  end
end
