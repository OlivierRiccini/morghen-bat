class CompanyValuesController < ApplicationController
  before_action :find_company_value, only: :update

  def update
    @company_value.update(company_value_params)
    redirect_to dashboard_path
  end

  private

  def find_company_value
    @company_value = CompanyValue.find(params[:id])
  end

  def company_value_params
    params.require(:company_value).permit(:content, :icon)
  end
end
