class ApplicationController < ActionController::Base
	before_filter :require_auth
	
  protect_from_forgery
	helper :all
	helper_method :current_user
	helper_method :current_user_session

	# Returns the current logged in candidate
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

	def require_auth
		return true if(current_user.present?)
		
		redirect_to root_path, :notice => t('.action_requires_login')
	end
end
