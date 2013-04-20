class FrontEndsController < ApplicationController
  # GET /front_ends
  # GET /front_ends.json
  
  def index
    @estate_agent = EstateAgent.all
    #@estate_agent = EstateAgent.find(current_user.estate_agent_id)
    #@properties = Property.all
    #@properties = Property.where("estate_agent_id = ?", params[@estate_agent.id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estate_agent }
    end
  end
  
  
  # GET /front_ends/1
  # GET /front_ends/1.json
  def show
    @estate_agent = EstateAgent.find(params[:id])
    @properties = Property.where("estate_agent_id = ?", @estate_agent.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @properties }
    end
  end
  
   # GET /front_ends/1
  # GET /front_ends/1.json
  def details
    @estate_agent = EstateAgent.find(params[:id])
    @property = Property.where("estate_agent_id = ? and id = ?", @estate_agent.id, params[:id2])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end
  
end