class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  devise_group :user, contains: [:admin, :business, :academic]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :research_area, :contact_phone, :entity_size, :organization])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :research_area, :contact_phone, :entity_size, :organization])
  end
end
