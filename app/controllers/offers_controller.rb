class OffersController < ApplicationController
  before_action :find_offer, only: [ :update, :destroy ]

  def create
    @new_offer = Offer.new(offer_params)
    @new_offer.pictures.each do |pic|
      pic.pic_duty = @new_offer
    end

    if @new_offer.save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def update
    @offer.update(offer_params)
    redirect_to dashboard_path
  end

  def destroy
    @offer.destroy
    redirect_to dashboard_path
  end

  private

  def find_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :category, :price, :time_frame, :content, pictures_attributes: [:id, :url, :_destroy])
  end
end
