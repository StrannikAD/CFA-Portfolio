class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order("created_at desc")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end
end
