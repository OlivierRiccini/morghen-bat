class CompanyKnowHowsController < ApplicationController
  before_action :find_company_know_how, only: [ :update, :destroy ]

  def create
    @new_company_know_how = CompanyKnowHow.new(company_know_how_params)

    if @new_company_know_how.save
      redirect_to root_path
    else
      render "pages/dashboard"
    end
  end

  def update
    @company_know_how.update(company_know_how_params)
    redirect_to dashboard_path
  end

  def destroy
    @company_know_how.destroy
    redirect_to dashboard_path
  end

  private

  def find_company_know_how
    @company_know_how = CompanyKnowHow.find(params[:id])
  end

  def company_know_how_params
    params.require(:company_know_how).permit(:content, :icon)
  end
end
