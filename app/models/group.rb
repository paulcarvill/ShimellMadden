class Group < ActiveRecord::Base

	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true
	
	OPTIONS = ['Collection', 'Project']
	#validates_inclusion_of :grouptype, :in => OPTIONS

	before_save :archive_images

	def archive_images
		self.images.each do |img|
			img.archived = self.archived
			img.save
		end
	end
end
