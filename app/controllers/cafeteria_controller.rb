class CafeteriaController < ApplicationController
  # GET /cafeteria
  # GET /cafeteria.json
  def index
    @cafeteria = Cafeterium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cafeteria }
    end
  end

  # GET /cafeteria/1
  # GET /cafeteria/1.json
  def show
    @cafeterium = Cafeterium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cafeterium }
    end
  end

  # GET /cafeteria/new
  # GET /cafeteria/new.json
  def new
    @cafeterium = Cafeterium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cafeterium }
    end
  end

  # GET /cafeteria/1/edit
  def edit
    @cafeterium = Cafeterium.find(params[:id])
  end

  # POST /cafeteria
  # POST /cafeteria.json
  def create
    @cafeterium = Cafeterium.new(params[:cafeterium])

    respond_to do |format|
      if @cafeterium.save
        format.html { redirect_to @cafeterium, notice: 'Cafeterium was successfully created.' }
        format.json { render json: @cafeterium, status: :created, location: @cafeterium }
      else
        format.html { render action: "new" }
        format.json { render json: @cafeterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cafeteria/1
  # PUT /cafeteria/1.json
  def update
    @cafeterium = Cafeterium.find(params[:id])

    respond_to do |format|
      if @cafeterium.update_attributes(params[:cafeterium])
        format.html { redirect_to @cafeterium, notice: 'Cafeterium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cafeterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafeteria/1
  # DELETE /cafeteria/1.json
  def destroy
    @cafeterium = Cafeterium.find(params[:id])
    @cafeterium.destroy

    respond_to do |format|
      format.html { redirect_to cafeteria_url }
      format.json { head :no_content }
    end
  end
end
