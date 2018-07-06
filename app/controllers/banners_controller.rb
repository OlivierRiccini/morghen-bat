class BannersController < ApplicationController
  before_action :find_banner, only: :update

  def update
    authorize @banner
    @banner.update(banner_params)
    redirect_to dashboard_path
  end

  private

  def find_banner
    @banner = Banner.find(params[:id])
  end

  def banner_params
    params.require(:banner).permit(:image)
  end
end
