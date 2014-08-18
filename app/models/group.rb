class Group < ActiveRecord::Base

	has_many :items
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true
	
	OPTIONS = ['Collection', 'Project', 'Archive']
	validates_inclusion_of :grouptype, :in => OPTIONS

end