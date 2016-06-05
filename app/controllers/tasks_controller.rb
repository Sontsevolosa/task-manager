class TasksController < ApplicationController
	def index
		@tasks = Task.all.paginate(page: params[:page])
	end
end
