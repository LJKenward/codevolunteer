class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_org
  
  def current_org
    Organisation.find(session[:organisation_id]) if session[:organisation_id]
  end
  
  def require_org 
    redirect_to '/login' unless current_org
  end
  
  def current_vol
    Volunteer.find(session[:volunteer_id]) if session[:volunteer_id]
  end
  
  def require_vol 
    redirect_to '/login' unless current_vol
  end

end
