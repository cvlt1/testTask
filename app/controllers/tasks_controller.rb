class TasksController < ApplicationController
	def edit
      @project = Project.find(params[:project_id])
    @task = @project.tasks.edit(tasks_params)
    redirect_to project_path(@project)
	end

def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(tasks_params)
    redirect_to project_path(@project)
  end

  private
    def tasks_params
      params.require(:task).permit(:name, :description, :status, :employee)
    end
end

