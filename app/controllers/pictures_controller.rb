class PicturesController < ApplicationController
  before_action :find_picture, only: [ :update, :destroy ]

  def create
    pic_duty = Project.where(id: params[:project_id]).take || Offer.where(id: params[:offer_id]).take
    @new_pic = Picture.new(picture_params)
    @new_pic.pic_duty = pic_duty

    respond_to do |format|
      if @new_pic.save
        format.js
      else
        format.js
      end
    end
  end

  def update
    @picture.update(picture_params)
    redirect_to dashboard_path
  end

  def destroy
    @picture.destroy
    respond_to { |format| format.js }
  end

  private

  def find_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:url)
  end
end
