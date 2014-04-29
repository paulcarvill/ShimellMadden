class Item < ActiveRecord::Base
	validates :name, presence: true

	belongs_to :collection
	belongs_to :project
end
