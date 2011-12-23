class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  # ======== Devise related method =========
  # default redirect to is "/users/sign_in"
  def after_sign_out_path_for(resource_or_scope)
    login_url
  end

end
