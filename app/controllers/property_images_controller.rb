class PropertyImagesController < ApplicationController
  # GET /property_images
  # GET /property_images.json
  def index
    @property_images = PropertyImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_images }
    end
  end

  # GET /property_images/1
  # GET /property_images/1.json
  def show
    @property_image = PropertyImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_image }
    end
  end

  # GET /property_images/new
  # GET /property_images/new.json
  def new
    @property_image = PropertyImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_image }
    end
  end

  # GET /property_images/1/edit
  def edit
    @property_image = PropertyImage.find(params[:id])
  end

  # POST /property_images
  # POST /property_images.json
  def create
    @property_image = PropertyImage.new(params[:property_image])

    respond_to do |format|
      if @property_image.save
        format.html { redirect_to @property_image, notice: 'Property image was successfully created.' }
        format.json { render json: @property_image, status: :created, location: @property_image }
      else
        format.html { render action: "new" }
        format.json { render json: @property_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_images/1
  # PUT /property_images/1.json
  def update
    @property_image = PropertyImage.find(params[:id])

    respond_to do |format|
      if @property_image.update_attributes(params[:property_image])
        format.html { redirect_to @property_image, notice: 'Property image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_images/1
  # DELETE /property_images/1.json
  def destroy
    @property_image = PropertyImage.find(params[:id])
    @property_image.destroy

    respond_to do |format|
      format.html { redirect_to property_images_url }
      format.json { head :no_content }
    end
  end
end
