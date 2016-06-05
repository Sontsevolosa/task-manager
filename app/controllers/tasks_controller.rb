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
			render 'tasks/index'
		end
	end

	private

		def task_params
			params.require(:task).permit(:content)
		end
end
