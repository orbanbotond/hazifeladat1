class ProiectsController < ApplicationController
  # GET /proiects
  # GET /proiects.json
  respond_to :mobile
  respond_to :html
  respond_to :json

  def index
    @proiects = Proiect.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proiects }
      format.mobile
    end
  end

  # GET /proiects/1
  # GET /proiects/1.json
  def show
    @proiect = Proiect.find(params[:id])
  end

  # GET /proiects/new
  # GET /proiects/new.json
  def new
    @proiect = Proiect.new
  end

  # GET /proiects/1/edit
  def edit
    @proiect = Proiect.find(params[:id])
  end

  # POST /proiects
  # POST /proiects.json
  def create
    @proiect = Proiect.new(params[:proiect])

    respond_to do |format|
      if @proiect.save
        format.html { redirect_to @proiect, notice: 'Proiect was successfully created.' }
        format.json { render json: @proiect, status: :created, location: @proiect }
        format.mobile { redirect_to @proiect, notice: 'Proiect was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @proiect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proiects/1
  # PUT /proiects/1.json
  def update
    @proiect = Proiect.find(params[:id])

    respond_to do |format|
      if @proiect.update_attributes(params[:proiect])
        format.html { redirect_to @proiect, notice: 'Proiect was successfully updated.' }
        format.json { head :ok }
        format.mobile { redirect_to @proiect, notice: 'Proiect was successfully updated.' }
      else
        format.html { render action: "edit" }
        format.json { render json: @proiect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proiects/1
  # DELETE /proiects/1.json
  def destroy
    @proiect = Proiect.find(params[:id])
    @proiect.destroy

    respond_to do |format|
      format.html { redirect_to proiects_url }
      format.json { head :ok }
    end
  end
end
