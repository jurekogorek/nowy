class DupasController < ApplicationController
  # GET /dupas
  # GET /dupas.json
  def index
    @dupas = Dupa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dupas }
    end
  end

  # GET /dupas/1
  # GET /dupas/1.json
  def show
    @dupa = Dupa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dupa }
    end
  end

  # GET /dupas/new
  # GET /dupas/new.json
  def new
    @dupa = Dupa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dupa }
    end
  end

  # GET /dupas/1/edit
  def edit
    @dupa = Dupa.find(params[:id])
  end

  # POST /dupas
  # POST /dupas.json
  def create
    @dupa = Dupa.new(params[:dupa])

    respond_to do |format|
      if @dupa.save
        format.html { redirect_to @dupa, notice: 'Dupa was successfully created.' }
        format.json { render json: @dupa, status: :created, location: @dupa }
      else
        format.html { render action: "new" }
        format.json { render json: @dupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dupas/1
  # PUT /dupas/1.json
  def update
    @dupa = Dupa.find(params[:id])

    respond_to do |format|
      if @dupa.update_attributes(params[:dupa])
        format.html { redirect_to @dupa, notice: 'Dupa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dupas/1
  # DELETE /dupas/1.json
  def destroy
    @dupa = Dupa.find(params[:id])
    @dupa.destroy

    respond_to do |format|
      format.html { redirect_to dupas_url }
      format.json { head :no_content }
    end
  end
end
