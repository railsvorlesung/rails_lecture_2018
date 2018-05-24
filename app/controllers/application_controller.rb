require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  before_action :authenticate_user!
  before_action :set_locale

  protected

  def set_locale
    I18n.locale = params.permit(:locale)[:locale] || :en
  end # #set_locale

end
