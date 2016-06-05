class TasksController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def index
		@tasks = Task.all.paginate(page: params[:page])
	end
end
