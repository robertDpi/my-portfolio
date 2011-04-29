class ProjectsController < ApplicationController

  before_filter :get_project, :only => [:show, :edit, :update, :delete, :destroy]

  def index
    list
    render('list')
  end

  def get_project
    # This will load with the before filter, so it is common to many methods
    @project = Project.find(params[:id])
  end

  def list
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new()
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project created successfully!"
      redirect_to(:action => 'list')
    else
      flash[:notice] = "Please correct the errors bellow..."
      render('new')
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project updated successfully"
      redirect_to(:action => 'show', :id => @project.id)
    else
      flash[:notice] = "Please correct the errors bellow..."
      render('edit')
    end
  end

  def delete
  end

  def destroy
    @project.destroy
    flash[:notice] = "Project permanently removed from the database."
    redirect_to(:action => 'list')
  end
end
