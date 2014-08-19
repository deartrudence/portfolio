class Project < ActiveRecord::Base
	default_scope { order 'project_order' }
	has_many :elements, ->{ order(:order) }
	has_attached_file :feature_img
  	validates_attachment_content_type :feature_img, :content_type => /\Aimage\/.*\Z/


end
