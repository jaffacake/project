class DashboardController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
    @estate_agent = EstateAgent.find(current_user.estate_agent_id)
    @properties = Property.where("estate_agent_id = ?", params[@estate_agent.id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estate_agent }
    end
  end
  
end
