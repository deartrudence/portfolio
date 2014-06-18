class AdminController < ApplicationController

	def show
		@elements = Element.all
		@projects = Project.all
	end
end
