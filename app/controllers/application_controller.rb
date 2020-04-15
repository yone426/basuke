class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :login_required, only: [:index]

  protected

  def login_required
    unless current_user.present?
      redirect_to signin_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:team_name])
  end
end
