class ApplicationController < ActionController::Base
  before_action :set_default_format
  protect_from_forgery with: :null_session
  # include Knock::Authenticable
  # undef_method :current_user

  def json_payload
    HashWithIndifferentAccess.new(JSON.parse(request.raw_post))
  end

  private

  def set_default_format
    request.format = :json
  end
end
