class FrontEndsController < ApplicationController
  # GET /front_ends
  # GET /front_ends.json
  
  def index
    @estate_agent = EstateAgent.all
    #@estate_agent = EstateAgent.find(current_user.estate_agent_id)
    @properties = Property.all
    #@properties = Property.where("estate_agent_id = ?", params[@estate_agent.id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estate_agent }
    end
  end
end