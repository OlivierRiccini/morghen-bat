class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :realizations, :your_project,
                                                  :your_project_houses, :your_project_apartments,
                                                  :contact ]

  def home
    @company_history = CompanyHistory.first
    @mission = Mission.first
    @know_how = CompanyKnowHow.first
    @company_values = CompanyValue.all
    @services = Service.all
  end

  def realizations
    @projects = Project.all
  end

  def your_project
    @banner = Banner.first
    # @offers = Offer.all
    @packs = Pack.all
  end

  def contact
    @company_details = CompanyDetail.first
    @message = Message.new
  end

  def dashboard
    authorize current_user

    @messages = Message.order("created_at DESC").all

    @company_history = CompanyHistory.first

    @company_values = CompanyValue.all
    @new_company_value = CompanyValue.new

    @company_know_hows = CompanyKnowHow.all
    @new_company_know_how = CompanyKnowHow.new

    @services = Service.all
    @new_service = Service.new

    @company_details = CompanyDetail.first

    @banner = Banner.first

    @mission = Mission.first

    @projects = Project.order("created_at DESC").all
    @new_project = Project.new
    @new_project.pictures.build

    # @offers = Offer.order("created_at DESC").all
    # @new_offer = Offer.new
    # @new_offer.pictures.build
    @packs = Pack.all
    @new_pack = Pack.new

    @new_pic = Picture.new
  end
end


