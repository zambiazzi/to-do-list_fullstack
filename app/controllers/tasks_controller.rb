class TasksController < ApplicationController
  before_action :fetch_task, only: %i[ edit update destroy ]
  before_action :get_status
  
  def index
    @tasks = Task.all.order(created_at: :asc)
    @no_tasks_message = "Não há tarefas criadas no momento." if @tasks.empty?
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    return redirect_to tasks_path if @task.save
  end

  def edit
    @task = Task.find(params[:id])
    render partial: 'tasks/shared/form', locals: { model: @task, url: task_path(@task), method: :patch }, layout: false  
  end

  def update
    return redirect_to tasks_path if @task.update(task_params)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def get_status
    @task_status = Task.statuses
  end

  def fetch_task 
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :status)
  end
end