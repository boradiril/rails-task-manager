class TasksController < ApplicationController

  def index                         # GET /restaurants
    @tasks = Task.all
  end

  def show                          # GET /restaurants/:id
    @task = Task.find(params[:id])
  end

  # create
  def new                           # GET /restaurants/new
    @task = Task.new
  end

  def create                        # POST /restaurants
    new_task = Task.new(title: params[:task][:title], details: params[:task][:details], completed: params[:task][:completed])
    # new_task = Task.new(task_params)
    new_task.save
    redirect_to task_path(new_task)
  end

  # update
  def edit                          # GET /restaurants/:id/edit
    @task = Task.find(params[:id])
  end

  def update                        # PATCH /restaurants/:id
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
    # @task.? # We'll see that in a moment.
  end

  def destroy                       # DELETE /restaurants/:id
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path

  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end


