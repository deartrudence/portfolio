class Element < ActiveRecord::Base
	include RankedModel
	validates :html_tag, presence: true
	validates :html_subtag, presence: true
	belongs_to :project
	has_attached_file :element_img
  	validates_attachment_content_type :element_img, :content_type => /\Aimage\/.*\Z/

  	
  	ranks :order,
  		:with_same => :project_id


end
