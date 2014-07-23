class AddShopifyIdToCollection < ActiveRecord::Migration
  def change
  	add_column :collections, :shopifyId, :text
  end
end
