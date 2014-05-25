class Item < ActiveRecord::Base
	validates :name, presence: true

	has_and_belongs_to_many :categories
	belongs_to :collection
	belongs_to :project

	has_attached_file :imageStyleOne
	has_attached_file :imageStyleTwo
	has_attached_file :imageStyleThree
	
	self.per_page = 6
  	
  	validates_attachment_content_type :imageStyleOne, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :imageStyleTwo, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :imageStyleThree, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]

  	def image_style_one_url
    	imageStyleOne.url
	end

	def image_style_two_url
    	imageStyleTwo.url
	end

	def image_style_three_url
    	imageStyleThree.url
	end
end
