class ProjectsController < ApplicationController
  before_action :find_project, only: [ :show ]

  def show
  end

  def create
    @new_project = Project.new(project_params)

    if @new_project.save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def update
    if @project.update(project_params).save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def destroy
    @project.destroy
    redirect_to dashboard_path
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :location, :category, :content)
  end
end
