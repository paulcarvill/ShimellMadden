class Image < ActiveRecord::Base

	before_save :dupe_date
	OPTIONS = [['Middle', 0], ['Top', 1], ['Bottom', 2]]

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

	def dupe_date
		if !self.date
			self.date = DateTime.now
		end
	end

end
