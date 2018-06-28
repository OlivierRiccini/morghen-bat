class ProjectsController < ApplicationController
  before_action :find_project, only: [ :show, :update, :destroy ]

  def show
  end

  def create
    @new_project = Project.new(project_params)

    if @new_project.save
      raise
      Picture.create(url: params[:project][:picture][:url], pic_duty: @new_project)
      redirect_to realizations_path
    else
      render "pages/dashboard"
    end
  end

  def update
    @project.update(project_params)
    redirect_to dashboard_path
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
