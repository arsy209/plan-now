class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  include AttendingsHelper
  include InvitationsHelper

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password,:password_confirmation, :current_password,:avatar) }
  end
end
