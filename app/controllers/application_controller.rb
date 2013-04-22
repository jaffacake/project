class ApplicationController < ActionController::Base
 
  def require_license!
    if current_user.estate_agent.license_expiry_date.past?
      sign_out :user
      redirect_to new_user_session_path, :alert => "Access Denied - Your license has expired. Please contact Evolvenet"
    end
  end
  
end
