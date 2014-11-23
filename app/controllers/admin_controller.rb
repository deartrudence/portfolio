class AdminController < ApplicationController

	#before_action :authenticate_user!

	def show
		@elements = Element.all
		@projects = Project.all.order('project_order')
	end
end
