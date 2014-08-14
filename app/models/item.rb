class Item < ActiveRecord::Base
	validates :name, presence: true

	has_and_belongs_to_many :categories
	belongs_to :collection
	belongs_to :project
	self.per_page = 6
	
end
