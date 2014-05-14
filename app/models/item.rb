class Item < ActiveRecord::Base
	validates :name, presence: true

	belongs_to :collection
	belongs_to :project

	has_attached_file :mainImage
	has_attached_file :squareImage
	has_attached_file :itemsImage
	
	self.per_page = 6
  	
  	validates_attachment_content_type :mainImage, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]

  	def image_url
    	mainImage.url
	end

	def square_image_url
    	squareImage.url
	end

	def items_image_url
    	itemsImage.url
	end

  	def as_json(options)
  		super(:methods =>[:image_url])
	end
end
