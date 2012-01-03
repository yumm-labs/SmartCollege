class ApplicationController < ActionController::Base
  
  protect_from_forgery

  layout 'app_layout'

  before_filter :initialize_institute!

  # ======== Devise related method =========
  # default redirect to is "/users/sign_in"
  def after_sign_out_path_for(resource_or_scope)
    login_url
  end
  
  def initialize_institute! # Customized for current_user implementation
    authenticate_user! # device method | useage - before_filter :authenticate_user!
    current_institute_id
  end

  def user_institutes
      Institute.all # current_user.institutes
  end
  
  def current_institute
    Institute.find( current_institute_id )
  end

  private
  def current_institute_id
    session['InstituteID'] ||= user_institutes.first.id
  end

end
