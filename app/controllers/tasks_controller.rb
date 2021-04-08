class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to root_url
    else
      render 'show'
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :body)
    end
end
