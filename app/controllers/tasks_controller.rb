class TasksController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user, only: :destroy
	
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

	def edit
		@task = Task.find(params[:id])
	end

	def update
    	@task = Task.find(params[:id])
    	if @task.update_attributes(task_params)
        	flash[:success] = "Task updated"
        	redirect_to root_url
    	else
        	render 'edit'
    	end
    end

    def share
    	@task = Task.find(params[:id])
    end

    # Action for share task
    def change
    	@task = Task.find(params[:id])
    	@user = User.find_by email: params[:user][:email]
    	@task.users << @user
    	redirect_to root_url
    end

    # Action for showing sharing form
    def show
    	@task = Task.find(params[:id])
    end

	def destroy
		@task.destroy
		flash[:success] = "Task deleted"
		redirect_to request.referrer || root_url
	end

	private

		def task_params
			params.require(:task).permit(:content)
		end

		def correct_user
			@task = current_user.tasks.find_by(id: params[:id])
			redirect_to root_url if @task.nil?
		end
end
