class ApplicationController < ActionController::Base
 
  def require_license!
    if current_user.estate_agent.license_expiry_date.past?
      sign_out :user
      redirect_to new_user_session_path, :alert => "Access Denied - Your license has expired. Please contact Evolvenet"
    end
  end
  
  class String
  def ellipsisize(minimum_length=4,edge_length=3)
    return self if self.length < minimum_length or self.length <= edge_length*2 
    edge = '.'*edge_length    
    mid_length = self.length - edge_length*2
    gsub(/(#{edge}).{#{mid_length},}(#{edge})/, '\1...\2')
  end
end
  
end
