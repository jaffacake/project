class PropertyStylesController < ApplicationController
  # GET /property_styles
  # GET /property_styles.json
  def index
    @property_styles = PropertyStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_styles }
    end
  end

  # GET /property_styles/1
  # GET /property_styles/1.json
  def show
    @property_style = PropertyStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_style }
    end
  end

  # GET /property_styles/new
  # GET /property_styles/new.json
  def new
    @property_style = PropertyStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_style }
    end
  end

  # GET /property_styles/1/edit
  def edit
    @property_style = PropertyStyle.find(params[:id])
  end

  # POST /property_styles
  # POST /property_styles.json
  def create
    @property_style = PropertyStyle.new(params[:property_style])

    respond_to do |format|
      if @property_style.save
        format.html { redirect_to property_styles_path, notice: 'Property style was successfully created.' }
        format.json { render json: @property_style, status: :created, location: @property_style }
      else
        format.html { render action: "new" }
        format.json { render json: @property_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_styles/1
  # PUT /property_styles/1.json
  def update
    @property_style = PropertyStyle.find(params[:id])

    respond_to do |format|
      if @property_style.update_attributes(params[:property_style])
        format.html { redirect_to property_styles_path, notice: 'Property style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_styles/1
  # DELETE /property_styles/1.json
  def destroy
    @property_style = PropertyStyle.find(params[:id])
    @property_style.destroy

    respond_to do |format|
      format.html { redirect_to property_styles_url }
      format.json { head :no_content }
    end
  end
 
end
