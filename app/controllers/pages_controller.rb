class PagesController < ApplicationController
  def home
    @projects = Project.all
    @offers = Offer.all
    @company_values = CompanyValue.first
    @history = CompanyHistory.all
    @company_know_hows = CompanyKnowHow.all
  end

  def company
  end

  def realizations
  end

  def projects
  end

  def contact
  end

end
