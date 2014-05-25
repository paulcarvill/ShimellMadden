class Blog < ActiveRecord::Base
	has_attached_file :blogImage

	self.per_page = 3
  	
  	validates_attachment_content_type :blogImage, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]

  	def image_style_one_url
    	blogImage.url
	end
end
