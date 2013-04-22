class DashboardController < ApplicationController
  before_filter :authenticate_user!, :require_license!
  
  def index
    @estate_agent = EstateAgent.find(current_user.estate_agent_id)
    @properties = Property.where("estate_agent_id = ?", params[@estate_agent.id])
    
    @properties = Property.where("estate_agent_id = ?", params[@estate_agent.id])
    #@tenancy = @properties.tenancy_agreements.first.start_date
    @properties_by_date = @properties.group_by(&:start_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
    end
  end
  
end
