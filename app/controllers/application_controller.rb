class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    
    # TODO: else? if not business? maybe...
    # TODO: correct logic for when to go to pricing path

    # current_user.sign_in_count == 1 &&
    if current_user.role == 'business'
      pricing_path(current_user)
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :research_area, :contact_phone, :entity_size, :organization, :role])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :research_area, :contact_phone, :entity_size, :organization, :role])
  end
end
