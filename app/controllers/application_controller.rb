class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_family

  def current_family
  	@current_family ||= family_from_session
  end

  def family_from_session
  	Family.find_by(id: session[:family_id])
  end

  def require_family
  	if !current_family
  		redirect_to sign_in_url, alert: "Please sign in first"
  	end
  end
  
  def after_sign_in_path_for(admin)
    families_path
  end
  
  def after_sign_up_path_for(admin)
    families_path
  end
end
