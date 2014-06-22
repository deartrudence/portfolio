class Element < ActiveRecord::Base
	validates :html_tag, presence: true
	validates :html_subtag, presence: true
	belongs_to :project
	has_attached_file :element_img
  	validates_attachment_content_type :element_img, :content_type => /\Aimage\/.*\Z/
end
