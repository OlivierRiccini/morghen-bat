class MissionsController < ApplicationController
  before_action :find_mission, only: :update

  def update
    authorize @mission
    @mission.update(mission_params)
    redirect_to dashboard_path
  end

  private

  def find_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:content)
  end
end
