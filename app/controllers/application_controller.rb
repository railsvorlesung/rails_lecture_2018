require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  before_action :authenticate_user!
  before_action :set_locale

  protected

  def set_locale
    cookies['locale'] = params.permit(:locale)[:locale]  if params.permit(:locale)[:locale].present?
    I18n.locale       = cookies['locale'] || :en
  end # #set_locale

end
