class Image < ActiveRecord::Base

	belongs_to :group
	has_and_belongs_to_many :categories
	
	has_attached_file :itemImage, :styles => { :small => "640x400>", :large => "1280x800>" }

  	validates_attachment_content_type :itemImage, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"]

  	def img_url_small
    	itemImage.url(:small)
	end

	def img_url_large
    	itemImage.url(:large)
	end

	before_save :dupe_date

	def dupe_date
		if !self.date
			self.date = self.created_at
		end
	end

end
