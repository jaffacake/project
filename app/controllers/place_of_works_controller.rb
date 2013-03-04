class PlaceOfWorksController < ApplicationController
  # GET /place_of_works
  # GET /place_of_works.json
  def index
    @place_of_works = PlaceOfWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @place_of_works }
    end
  end

  # GET /place_of_works/1
  # GET /place_of_works/1.json
  def show
    @place_of_work = PlaceOfWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @place_of_work }
    end
  end

  # GET /place_of_works/new
  # GET /place_of_works/new.json
  def new
    @place_of_work = PlaceOfWork.new
    @place_of_work.build_contact_detail
    @place_of_work.contact_detail.build_address
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @place_of_work }
    end
  end

  # GET /place_of_works/1/edit
  def edit
    @place_of_work = PlaceOfWork.find(params[:id])
  end

  # POST /place_of_works
  # POST /place_of_works.json
  def create
    @place_of_work = PlaceOfWork.new(params[:place_of_work])

    respond_to do |format|
      if @place_of_work.save
        format.html { redirect_to @place_of_work, notice: 'Place of work was successfully created.' }
        format.json { render json: @place_of_work, status: :created, location: @place_of_work }
      else
        format.html { render action: "new" }
        format.json { render json: @place_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /place_of_works/1
  # PUT /place_of_works/1.json
  def update
    @place_of_work = PlaceOfWork.find(params[:id])

    respond_to do |format|
      if @place_of_work.update_attributes(params[:place_of_work])
        format.html { redirect_to @place_of_work, notice: 'Place of work was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @place_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_of_works/1
  # DELETE /place_of_works/1.json
  def destroy
    @place_of_work = PlaceOfWork.find(params[:id])
    @place_of_work.destroy

    respond_to do |format|
      format.html { redirect_to place_of_works_url }
      format.json { head :no_content }
    end
  end
end
