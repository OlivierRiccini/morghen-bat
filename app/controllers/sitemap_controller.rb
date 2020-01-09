class SitemapController < ApplicationController
  skip_before_action :authenticate_user!, only: :sitemap
  skip_after_action :verify_authorized, only: [ :sitemap ]
  def sitemap
  end
end
