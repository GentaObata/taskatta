class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def edit
  end

  private
    def task_params
      params.require(:task).permit(:title, :body)
    end
end
