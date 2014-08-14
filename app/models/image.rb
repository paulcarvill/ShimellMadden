class Image < ActiveRecord::Base

	belongs_to :collection

	has_attached_file :large, :styles => { :thumb => "200x200>" }
	has_attached_file :small, :styles => { :thumb => "200x200>" }

  	validates_attachment_content_type :large, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]
  	validates_attachment_content_type :small, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]

end
