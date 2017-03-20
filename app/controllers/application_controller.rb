class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :is_admin?

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    # TODO: else? if not business? maybe...
    # TODO: correct logic for when to go to pricing path
    # current_user.sign_in_count == 1 &&

    case current_user.role
    when 'academic'
      products_path
    when 'business'
      pricing_path(current_user)
    when 'admin'
      products_path
    else
      products_path
    end
  end

  def is_admin?
    current_user != nil and current_user.role == 'admin'
  end

  def deny_access
    # TODO: maybe return a 401 or 403 status code
    flash[:failure] = "You do not have access to that page."
    redirect_to root_url
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :research_area, :contact_phone, :entity_size, :organization, :role])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :research_area, :contact_phone, :entity_size, :organization, :role])
  end
end
