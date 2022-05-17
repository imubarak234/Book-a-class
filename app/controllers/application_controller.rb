class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token
  before_action :set_default_format
  before_action :configure_permitted_parameters, if: :devise_controller?
  # protect_from_forgery with: :null_session
  # include Knock::Authenticable
  # undef_method :current_user

  def json_payload
    HashWithIndifferentAccess.new(JSON.parse(request.raw_post))
  end

  def authenticateing_users
    token, _options = token_and_options(request)
    if token
      user_id = AuthenticationTokenService.decode(token)
      User.find(user_id)

    else
      render json: { error: 'Unauthorized user' }
    end
  end

  private

  def set_default_format
    request.format = :json
  end

  protected

  def configure_permitted_parameters
    added_attrs = %i[username email password password_confirmation remember_me full_name]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: %i[login password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
