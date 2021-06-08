class KomponentesController < ApplicationController
  before_action :set_komponente, only: [:show, :edit, :update, :destroy]

  # GET /komponentes
  # GET /komponentes.json
  def index
   
    @komponentes = Komponente.all
    @kundes = Kunde.all
  end

  # GET /komponentes/1
  # GET /komponentes/1.json
  def show
    
    @kundes = Kunde.all
  end

  # GET /komponentes/new
  def new
    @kundes = Kunde.all
    @komponente = Komponente.new
  end

  # GET /komponentes/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /komponentes
  # POST /komponentes.json
  def create
    @kundes = Kunde.all
    @komponente = Komponente.new(komponente_params)

    respond_to do |format|
      if @komponente.save
        format.html { redirect_to "/start/index/#{Applikation.find(@komponente.applikation_id).kunde_id}/#{@komponente.applikation_id}", notice: 'Komponente was successfully created.' }
        format.json { render :show, status: :created, location: @komponente }
      else
        format.html { render :new }
        format.json { render json: @komponente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /komponentes/1
  # PATCH/PUT /komponentes/1.json
  def update
    
    respond_to do |format|
      if @komponente.update(komponente_params)
        format.html { redirect_to "/start/index/#{Applikation.find(@komponente.applikation_id).kunde_id}/#{@komponente.applikation_id}" ,notice: 'Komponente was successfully updated.' }
        format.json { render :show, status: :ok, location: @komponente }
      else
        format.html { render :edit }
        format.json { render json: @komponente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komponentes/1
  # DELETE /komponentes/1.json
  def destroy
    @komponente.destroy
    respond_to do |format|
      format.html { redirect_to komponentes_url, notice: 'Komponente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_komponente
      @komponente = Komponente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def komponente_params
      params.require(:komponente).permit(:name, :beschreibung, :installationspfad, :port, :start, :stop, :besonderheiten, :applikation_id, :server_id, :stufe_id, :komponententyp_id)
    end
end
