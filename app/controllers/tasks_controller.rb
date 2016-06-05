class TasksController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def index
		@tasks = Task.all.paginate(page: params[:page])
		@task = Task.new
	end

	def create
		@task = current_user.tasks.build(task_params)

		if @task.save
			flash[:success] = "Task created!"
			redirect_to root_url
		else
			render 'login_path'
		end
	end
end
