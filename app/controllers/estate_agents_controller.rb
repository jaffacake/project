class EstateAgentsController < ApplicationController
  before_filter :authenticate_user!, :require_license!
  # GET /estate_agents
  # GET /estate_agents.json
  def index
    if current_user.admin == 3
      @estate_agents = EstateAgent.all
    else
      @estate_agents = EstateAgent.find(current_user.estate_agent_id)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estate_agents }
    end
  end

  # GET /estate_agents/1
  # GET /estate_agents/1.json
  def show
    @estate_agent = EstateAgent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estate_agent }
    end
  end

  # GET /estate_agents/new
  # GET /estate_agents/new.json
  def new
    @estate_agent = EstateAgent.new
    @estate_agent.build_contact_detail.build_address
    @estate_agent.user.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estate_agent }
    end
  end

  # GET /estate_agents/1/edit
  def edit
    @estate_agent = EstateAgent.find(params[:id])
  end

  # POST /estate_agents
  # POST /estate_agents.json
  def create
    @estate_agent = EstateAgent.new(params[:estate_agent])
    respond_to do |format|
      if @estate_agent.save
        format.html { redirect_to estate_agents_path, notice: 'Estate agent was successfully created.' }
        format.json { render json: @estate_agent, status: :created, location: @estate_agent }
      else
        format.html { render action: "new" }
        format.json { render json: @estate_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estate_agents/1
  # PUT /estate_agents/1.json
  def update
    @estate_agent = EstateAgent.find(params[:id])

    respond_to do |format|
      if @estate_agent.update_attributes(params[:estate_agent])
        format.html { redirect_to estate_agents_path, notice: 'Estate agent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estate_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estate_agents/1
  # DELETE /estate_agents/1.json
  def destroy
    @estate_agent = EstateAgent.find(params[:id])
    @estate_agent.destroy

    respond_to do |format|
      format.html { redirect_to estate_agents_url }
      format.json { head :no_content }
    end
  end
end
