# Controls user signin from CTD_downloads

class CtdSessionsController < Devise::SessionsController
   protect_from_forgery with: :null_session
   skip_before_action :require_no_authentication
   before_action :configure_permitted_parameters, if: :devise_controller?
   skip_before_action :verify_authenticity_token, :only => [:create, :new, :failure]

  def new
    super
  end

  def create
    email = params[:email] if params
    password = params[:password] if params

    id = User.find_by(email: email).try(:id) if email.presence

    if email.nil? or password.nil?
      render json: { message: 'The request must contain the user email and password.' }, status: 400
      return
  end

     # Authentication
    @user = User.find_by(email: email)

  if @user
    if @user.valid_password? password
      if @user.confirmed_at.nil?
        render json: { message: 'Be sure account has been confirmed' }, status: 401
      else
        sign_in(resource_name, @user)
        cookies['_code_alliance_reg'] = { value: JSON.dump({ role: @user.role, email: @user.email }),
          expires: cookie_expiration(@user) }
          render json: { message: 'User successfully signed in' }, status: 200
      end
      else
        render json: { message: 'Invalid email or password.' }, status: 400
      end
      else
        render json: { message: 'Invalid email or password.' }, status: 400
      end
    end

   def cookie_expiration(user)
     user.confirmed_at + 1.year
   end
end
