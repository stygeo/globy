class UserSessionsController < ApplicationController
	skip_before_filter :require_auth, :only => [:new, :create]
	
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to dashboard_url, :notice => t(".logged_in_success")
    else
      redirect_to root_url, :notice => t(".logged_in_fail")
    end
  end

  def destroy
    current_user_session.destroy
    redirect_to root_url
  end
end