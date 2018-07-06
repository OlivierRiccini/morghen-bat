class ServicesController < ApplicationController
  before_action :find_service, only: [ :update, :destroy ]

  def create
    @new_service = Service.new(service_params)
    authorize @new_service
    if @new_service.save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def update
    authorize @service
    @service.update(service_params)
    redirect_to dashboard_path
  end

  def destroy
    authorize @service
    @service.destroy
    redirect_to dashboard_path
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :content, :icon)
  end
end
