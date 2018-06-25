class PagesController < ApplicationController
  def home
    @company_know_hows = CompanyKnowHow.all
    @company_history = CompanyHistory.first
    @company_values = CompanyValue.all
  end

  def realizations
    @projects = Project.all
  end

  def your_project
    @offers = Offer.all
  end

  def contact
    @message = Message.new
  end

  def commitments
  end

  def dashboard
    @messages = Message.order("created_at DESC").all
    @company_history = CompanyHistory.first
    @company_know_hows = CompanyKnowHow.all
    @company_values = CompanyValue.all
    @projects = Project.all
    @offers = Offer.all
  end
end


