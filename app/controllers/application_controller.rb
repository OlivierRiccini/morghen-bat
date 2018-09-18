class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  before_action :no_translation

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def no_translation
    if locale == :es
      @no_translation = "Lo siento, este artículo no ha sido traducido al español"
    elsif locale == :en
      @no_translation = "Sorry, this item has not been translated into english"
    else
      @no_translation = "Désolé, cet élément n'a pas été traduit en français"
    end
  end
end
