class EstateAgentsImagesController < ApplicationController
  # GET /estate_agents_images
  # GET /estate_agents_images.json
  def index
    @estate_agent_images = EstateAgentsImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estate_agent_images }
    end
  end

  # GET /estate_agents_images/1
  # GET /estate_agents_images/1.json
  def show
    @estate_agent_image = EstateAgentsImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estate_agent_image }
    end
  end

  # GET /estate_agents_images/new
  # GET /estate_agents_images/new.json
  def new
    @estate_agent_image = EstateAgentsImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estate_agent_image }
    end
  end

  # GET /estate_agents_images/1/edit
  def edit
    @estate_agent_image = EstateAgentsImage.find(params[:id])
  end

  # POST /estate_agents_images
  # POST /estate_agents_images.json
  def create
    @estate_agent_image = EstateAgentsImage.new(params[:property_image])

    respond_to do |format|
      if @estate_agent_image.save
        format.html { redirect_to @estate_agent_image, notice: 'Property image was successfully created.' }
        format.json { render json: @estate_agent_image, status: :created, location: @estate_agent_image }
      else
        format.html { render action: "new" }
        format.json { render json: @estate_agent_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estate_agents_images/1
  # PUT /estate_agents_images/1.json
  def update
    @estate_agent_image = EstateAgentsImage.find(params[:id])

    respond_to do |format|
      if @estate_agent_image.update_attributes(params[:property_image])
        format.html { redirect_to @estate_agent_image, notice: 'Property image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estate_agent_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estate_agents_images/1
  # DELETE /estate_agents_images/1.json
  def destroy
    @estate_agent_image = EstateAgentsImage.find(params[:id])
    @estate_agent_image.destroy

    respond_to do |format|
      format.html { redirect_to estate_agent_image_images_url }
      format.json { head :no_content }
    end
  end
end
