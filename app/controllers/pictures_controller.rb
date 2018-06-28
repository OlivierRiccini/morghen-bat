class PicturesController < ApplicationController
  before_action :find_picture, only: [ :update, :destroy ]
  # before_action :load_pic_duty

  def create
    pic_duty = Project.where(id: params[:project_id]).take
    @new_pic = Picture.new(picture_params)
    @new_pic.pic_duty = pic_duty

    if @new_pic.save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def update
    @picture.update(picture_params)
    redirect_to dashboard_path
  end

  def destroy
    @picture.destroy
    redirect_to dashboard_path
  end

  private

  def find_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:url)
  end

  # def load_pic_duty
  #   resource, id = request.path.split('/')[1,2]
  #   @pic_duty = resource.singularize.classify.constantize.find(id)
  # end
end
