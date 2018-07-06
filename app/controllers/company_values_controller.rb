class CompanyValuesController < ApplicationController
  before_action :find_company_value, only: [ :update, :destroy ]

  def create
    @new_company_value = CompanyValue.new(company_value_params)
    authorize @new_company_value
    if @new_company_value.save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def update
    authorize @company_value
    @company_value.update(company_value_params)
    redirect_to dashboard_path
  end

  def destroy
    authorize @company_value
    @company_value.destroy
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
