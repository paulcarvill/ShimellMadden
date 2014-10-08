class AddDateToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.date :date
    end
  end
end
