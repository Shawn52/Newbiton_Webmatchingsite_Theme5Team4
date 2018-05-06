class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:userid, :phoneNumber, :city, :address])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:userid])
    devise_parameter_sanitizer.permit(:account_update, keys:  [:userid, :phoneNumber, :city, :address])
  end
end
