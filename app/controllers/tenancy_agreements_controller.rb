class TenancyAgreementsController < ApplicationController
  # GET /tenancy_agreements
  # GET /tenancy_agreements.json
  def index
    if current_user.admin == 3
      @tenancy_agreements = TenancyAgreement.all
    else
      @tenancy_agreements = TenancyAgreement.where("estate_agent_id = ?", current_user.estate_agent_id)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tenancy_agreements }
    end
  end

  # GET /tenancy_agreements/1
  # GET /tenancy_agreements/1.json
  def show
    @tenancy_agreement = TenancyAgreement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tenancy_agreement }
    end
  end

  # GET /tenancy_agreements/new
  # GET /tenancy_agreements/new.json
  def new
    @tenancy_agreement = TenancyAgreement.new
    
    @tenant = @tenancy_agreement.tenant.build
    
    @tenancy_agreement.tenant.build.build_place_of_work.build_contact_detail.build_address
    
    #@contact_detail = @tenant.build_contact_detail
    #@contact_detail.build_address
    
    @tenancy_agreement.tenant.build.build_place_of_work.build_contact_detail.build_address
    
    #@place_of_work = @tenant.build_place_of_work
    #@contact_detail2 = @place_of_work.build_contact_detail
    #@contact_detail2.build_address
    
    @tenancy_agreement.estate_agent_id = current_user.estate_agent_id
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tenancy_agreement }
    end
  end

  # GET /tenancy_agreements/1/edit
  def edit
    @tenancy_agreement = TenancyAgreement.find(params[:id])
  end

  # POST /tenancy_agreements
  # POST /tenancy_agreements.json
  def create
    @tenancy_agreement = TenancyAgreement.new(params[:tenancy_agreement])
    @tenancy_agreement.estate_agent_id = current_user.estate_agent_id
    respond_to do |format|
      if @tenancy_agreement.save
        format.html { redirect_to @tenancy_agreement, notice: 'Tenancy agreement was successfully created.' }
        format.json { render json: @tenancy_agreement, status: :created, location: @tenancy_agreement }
      else
        format.html { render action: "new" }
        format.json { render json: @tenancy_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tenancy_agreements/1
  # PUT /tenancy_agreements/1.json
  def update
    @tenancy_agreement = TenancyAgreement.find(params[:id])

    respond_to do |format|
      if @tenancy_agreement.update_attributes(params[:tenancy_agreement])
        format.html { redirect_to @tenancy_agreement, notice: 'Tenancy agreement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tenancy_agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenancy_agreements/1
  # DELETE /tenancy_agreements/1.json
  def destroy
    @tenancy_agreement = TenancyAgreement.find(params[:id])
    @tenancy_agreement.destroy

    respond_to do |format|
      format.html { redirect_to tenancy_agreements_url }
      format.json { head :no_content }
    end
  end
end
