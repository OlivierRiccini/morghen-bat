class ProjectsController < ApplicationController
  before_action :find_project, only: [ :show, :update, :destroy ]

  def show
  end

  def create
    @new_project = Project.new(project_params)
    authorize @new_project
    @new_project.pictures.each do |pic|
      pic.pic_duty = @new_project
    end

    if @new_project.save
      redirect_to project_path(@new_project)
    else
      render "pages/dashboard"
    end
  end

  def update
    authorize @project
    @project.update(project_params)
    redirect_to dashboard_path
  end

  def destroy
    authorize @project
    @project.destroy
    respond_to { |format| format.js }
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :location, :category, :content, :budget, :area, :time_frame, pictures_attributes: [:id, :url, :_destroy])
  end
end
