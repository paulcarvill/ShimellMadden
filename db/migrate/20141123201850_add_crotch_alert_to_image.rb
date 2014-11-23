class AddCrotchAlertToImage < ActiveRecord::Migration
  def change
  	change_table :images do |t|
      t.integer :weight, :default => 0
    end
  end
end
