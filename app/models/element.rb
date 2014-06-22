class Element < ActiveRecord::Base
	validates :html_tag, presence: true
	validates :html_subtag, presence: true
	belongs_to :project
end
