class Project < ActiveRecord::Base
	has_many :elements
	has_attached_file :feature_img
  	validates_attachment_content_type :feature_img, :content_type => /\Aimage\/.*\Z/
end
