class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @estate_agent = EstateAgent.find(current_user.estate_agent_id)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estate_agent }
    end
  end
  
end
