class ProjectsController < ApplicationController

  before_filter :get_project, :only => [:show, :edit, :update, :delete, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project created successfully!"
      redirect_to project_path(@project.id)
    else
      flash[:notice] = "Please correct the errors bellow..."
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project updated successfully"
      redirect_to project_path(@project.id)
    else
      flash[:notice] = "Please correct the errors bellow..."
      render :edit
    end
  end

  def delete
  end

  def destroy
    @project.destroy
    flash[:notice] = "Project permanently removed from the database."
    redirect_to projects_path
  end

  private

  # Note: This is good practice if we have only one instance variable.
  def get_project
    @project = Project.find(params[:id])
  end
  
end
