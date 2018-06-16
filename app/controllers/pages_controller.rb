class PagesController < ApplicationController
  def home
    @company_know_hows = CompanyKnowHow.all
    @history = CompanyHistory.all
    @company_values = CompanyValue.first
  end

  def realizations
    @projects = Project.all
  end

  def your_project
    @offers = Offer.all
  end

  def contact
  end

  def commitments
  end

  def dashboard
  end
end
