class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    # finds user with session data and stores it if present
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
  def logged_in
    !Current.user.nil?
  end
  def authorized
    redirect_back(fallback_location: root_path) unless logged_in
  end
end
