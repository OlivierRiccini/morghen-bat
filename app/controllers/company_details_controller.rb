class CompanyDetailsController < ApplicationController
  before_action :find_company_details, only: :update

  def update
    authorize @company_details
    @company_details.update(company_details_params)
    redirect_to dashboard_path
  end

  private

  def find_company_details
    @company_details = CompanyDetail.find(params[:id])
  end

  def company_details_params
    params.require(:company_detail).permit(:address, :postal_code, :city, :country, :phone)
  end
end
