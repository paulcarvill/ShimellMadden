class AddHomepageFlagToItem < ActiveRecord::Migration
  def change
    add_column :items, :homepage, :boolean
  end
end
