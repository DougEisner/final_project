# Allows user registration at CTD

class CtdController < Devise::RegistrationsController

  protect_from_forgery with: :null_session
  skip_before_action :require_no_authentication
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_action :verify_authenticity_token, :only => [:create]

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password,
      :password_confirmation, :research_area, :contact_phone, :entity_size, :organization, :role))
    # Academic users will be confirmed upon creation.  Not required to click email.
    @user.skip_confirmation!

    if @user.save
      render json: { message: 'User successfully created' }, status: 201
    else
      render json: { message: @user.errors.full_messages }, status: 400
    end
  end
end
