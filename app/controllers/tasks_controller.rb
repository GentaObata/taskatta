class TasksController < ApplicationController

  def index
    tasks = Task.search(params[:search])
    if params[:sort] == 'due_time'
      @tasks = tasks.order('due_time ASC NULLS LAST')
    elsif params[:sort] == 'priority'
      @tasks = tasks.order('priority DESC')
    else
      @tasks = tasks.order(created_at: 'DESC')
    end
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
      flash[:success] = '新規タスクを追加しました。'
      redirect_to root_url
    else
      flash[:danger] = 'タスクの作成に失敗しました'
      render 'new'
    end
  end

  def edit
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = 'タスクを変更しました。'
      redirect_to root_url
    else
      render 'show'
    end
  end

  def destroy
    if Task.find(params[:id]).destroy
      flash[:success] = 'タスクを削除しました。'
      redirect_to root_url
    else
      flash[:danger] = 'タスクの削除に失敗しました'
      render 'show'
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :body, :due_time, :status, :priority)
    end
end
