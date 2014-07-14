class Blog < ActiveRecord::Base
	has_attached_file :blogImage1
	has_attached_file :blogImage2
	has_attached_file :blogImage3

	self.per_page = 3
  	
  	validates_attachment_content_type :blogImage1, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :blogImage2, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :blogImage3, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
end
