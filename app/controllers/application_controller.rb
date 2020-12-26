class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :fetch_current_user

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:login, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:login, :email, :password, :current_password)}
  end

  def fetch_current_user
    if user_signed_in?
      @user_name = current_user.email.split('@')[0]
      @notes = current_user.notes.reverse
    else
      @user_name = 'Guest'
    end
  end
end
