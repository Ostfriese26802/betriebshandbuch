class HardwaretypzuserversController < ApplicationController
  before_action :set_hardwaretypzuserver, only: [:show, :edit, :update, :destroy]

  # GET /hardwaretypzuservers
  # GET /hardwaretypzuservers.json
  def index
    @kundes = Kunde.all
    @hardwaretypzuservers = Hardwaretypzuserver.all
  end

  # GET /hardwaretypzuservers/1
  # GET /hardwaretypzuservers/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /hardwaretypzuservers/new
  def new
    @kundes = Kunde.all
    @hardwaretypzuserver = Hardwaretypzuserver.new
  end

  # GET /hardwaretypzuservers/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /hardwaretypzuservers
  # POST /hardwaretypzuservers.json
  def create
    @kundes = Kunde.all
    @hardwaretypzuserver = Hardwaretypzuserver.new(hardwaretypzuserver_params)

    respond_to do |format|
      if @hardwaretypzuserver.save
        format.html { redirect_to "/start/index/#{Server.find(@hardwaretypzuserver.server_id).kunde_id}/#{Komponente.where(server_id: @hardwaretypzuserver.server_id).first.applikation_id}", notice: 'Hardwaretypzuserver was successfully created.' }
        format.json { render :show, status: :created, location: @hardwaretypzuserver }
      else
        format.html { render :new }
        format.json { render json: @hardwaretypzuserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwaretypzuservers/1
  # PATCH/PUT /hardwaretypzuservers/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @hardwaretypzuserver.update(hardwaretypzuserver_params)
        format.html { redirect_to "/start/index/#{Server.find(@hardwaretypzuserver.server_id).kunde_id}/#{Komponente.where(server_id: @hardwaretypzuserver.server_id).first.applikation_id}", notice: 'Hardwaretypzuserver was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardwaretypzuserver }
      else
        format.html { render :edit }
        format.json { render json: @hardwaretypzuserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwaretypzuservers/1
  # DELETE /hardwaretypzuservers/1.json
  def destroy
    @kundes = Kunde.all
    @hardwaretypzuserver.destroy
    respond_to do |format|
      format.html { redirect_to request.referer, notice: 'Hardwaretypzuserver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardwaretypzuserver
      @hardwaretypzuserver = Hardwaretypzuserver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hardwaretypzuserver_params
      params.require(:hardwaretypzuserver).permit(:hardwaretyp_id, :server_id, :wert, :name)
    end
end
