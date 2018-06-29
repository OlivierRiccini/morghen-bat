class ProjectsController < ApplicationController
  before_action :find_project, only: [ :show, :update, :destroy ]

  def show
  end

  def create
    @new_project = Project.new(project_params)
    @new_project.pictures.each do |pic|
      pic.pic_duty = @new_project
    end

    if @new_project.save
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
    params.require(:project).permit(:name, :location, :category, :content, pictures_attributes: [:id, :url, :_destroy])
  end
end
