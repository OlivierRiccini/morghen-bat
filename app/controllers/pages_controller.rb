class PagesController < ApplicationController

  def home
    @company_history = CompanyHistory.first
    @mission = Mission.first
    @company_know_hows = CompanyKnowHow.all
    @company_values = CompanyValue.all
    @services = Service.all
  end

  def realizations
    @projects = Project.all
  end

  def your_project
    @banner = Banner.first
    @offers = Offer.all
  end

  def contact
    @company_details = CompanyDetail.first
    @message = Message.new
  end

  def commitments
  end

  def dashboard
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

    @offers = Offer.order("created_at DESC").all
    @new_offer = Offer.new
    @new_offer.pictures.build

    @new_pic = Picture.new
  end
end


