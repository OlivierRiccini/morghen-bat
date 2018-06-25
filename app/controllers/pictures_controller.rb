class PicturesController < ApplicationController
  before_action :find_picture, only: [ :update, :destroy ]

  def update
    @picture.update(picture_params)
    redirect_to dashboard_path
  end

  private

  def find_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:url)
  end
end
