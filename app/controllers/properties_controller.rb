class PropertiesController < ApplicationController
  before_filter :authenticate_user!
  # GET /properties
  # GET /properties.json
  def index
    if current_user.admin == 3
      @properties = Property.all
    else
      @properties = Property.where("estate_agent_id = ?", current_user.estate_agent_id)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: PropertiesDatatable.new(view_context) }
    end
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/new
  # GET /properties/new.json
  def new
    @property = Property.new
    @property.build_address
    @property.landlords.build.build_contact_detail.build_address
    @property.property_images.build
    @property.tenancy_agreements.build.tenants.build
    
    #@landlord = @property.landlord.build
    #@contact_detail = @landlord.build_contact_detail
    #@contact_detail.build_address 
    
    #@tenancy_agreement = @property.tenancy_agreement.build
    #@tenant = @tenancy_agreement.tenant.build
    #@contact_detail2 = @tenant.build_contact_detail
    #@contact_detail2.build_address
    #@place_of_work = @tenant.build_place_of_work
    #@place_of_work_contact_detail = @place_of_work.build_contact_detail
    #@place_of_work_contact_detail.build_address
    
    @property.estate_agent_id = current_user.estate_agent_id
    #@property.landlord.build_contact_detail
    #@property.contact_detail.build_address
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(params[:property])
    @property.estate_agent_id = current_user.estate_agent_id
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /properties/1
  # PUT /properties/1.json
  def update
    @property = Property.find(params[:id])

    respond_to do |format|
      if @property.update_attributes(params[:property])
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end
end
