class Blog < ActiveRecord::Base
	has_attached_file :blogImage1
	has_attached_file :blogImage2
	has_attached_file :blogImage3

	validates_attachment_content_type :blogImage1, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :blogImage2, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :blogImage3, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
	
	self.per_page = 3
	before_save :destroy_image?

  	def blogImage1_delete
		@blogImage1_delete ||= "0"
	end
	def blogImage2_delete
		@blogImage2_delete ||= "0"
	end
	def blogImage3_delete
		@blogImage3_delete ||= "0"
	end

	def blogImage1_delete=(value)
		@blogImage1_delete = value
	end
	def blogImage2_delete=(value)
		@blogImage2_delete = value
	end
	def blogImage3_delete=(value)
		@blogImage3_delete = value
	end

  	private
	def destroy_image?
		self.blogImage1.clear if @blogImage1_delete == "1"
		self.blogImage2.clear if @blogImage2_delete == "1"
		self.blogImage3.clear if @blogImage3_delete == "1"
	end
end
