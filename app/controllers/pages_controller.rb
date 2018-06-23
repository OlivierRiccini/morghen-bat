class PagesController < ApplicationController
  def home
    @company_know_hows = CompanyKnowHow.all
    @history = CompanyHistory.first
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
  end
end
