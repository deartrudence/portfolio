class AdminController < ApplicationController

	#before_action :authenticate_user!
	def iframe_action
	  response.headers.delete "X-Frame-Options"
	  render_something
	end

	def show
		@elements = Element.all
		@projects = Project.all.order('project_order')
	end
end
