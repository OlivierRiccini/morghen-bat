class CompanyHistoriesController < ApplicationController
  before_action :find_company_history, only: :update

  def update
    @company_history.update(company_history_params)
    redirect_to dashboard_path
  end

  private

  def find_company_history
    @company_history = CompanyHistory.find(params[:id])
  end

  def company_history_params
    params.require(:company_history).permit(:content)
  end
end
