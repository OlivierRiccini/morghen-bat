class PacksController < ApplicationController
  before_action :find_pack, only: [ :update, :destroy ]

  def create
    @pack = Pack.new(pack_params)
    authorize @pack
    if @pack.save
      redirect_to your_project_path
    else
      render "pages/dashboard"
    end
  end

  def update
    authorize @pack
    @pack.update(pack_params)
    redirect_to your_project_path
  end

  def destroy
    authorize @pack
    @pack.destroy
    redirect_to your_project_path
  end

  private

  def find_pack
    @pack = Pack.find(params[:id])
  end

  def pack_params
    params.require(:pack).permit(:title, :description)
  end
end
