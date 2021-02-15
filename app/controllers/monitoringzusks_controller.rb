class MonitoringzusksController < ApplicationController
  before_action :set_monitoringzusk, only: [:show, :edit, :update, :destroy]

  # GET /monitoringzusks
  # GET /monitoringzusks.json
  def index
    @monitoringzusks = Monitoringzusk.all
    @kundes = Kunde.all
  end

  # GET /monitoringzusks/1
  # GET /monitoringzusks/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /monitoringzusks/new
  def new
    @monitoringzusk = Monitoringzusk.new
    @kundes = Kunde.all
  end

  # GET /monitoringzusks/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /monitoringzusks
  # POST /monitoringzusks.json
  def create
    @kundes = Kunde.all
    @monitoringzusk = Monitoringzusk.new(monitoringzusk_params)
    

    respond_to do |format|
      if @monitoringzusk.save
        # die Redirect_to url wird immer neu gebildet durch die mitgegebene Komponente / Server id
        if params.has_key?(:komponente_id) 
          format.html { redirect_to "/start/index/#{Applikation.find(Komponente.find(monitoringzusk_params[:komponente_id]).applikation_id).kunde_id}/#{Komponente.find(monitoringzusk_params[:komponente_id]).applikation_id}", notice: "Das Monitoring wurde gespeichert" }
        else
          format.html { redirect_to "/start/index/#{Server.find(monitoringzusk_params[:server_id]).kunde_id}/#{Komponente.find(monitoringzusk_params[:server_id]).applikation_id}", notice: "Das Monitoring wurde gespeichert" }
        end
          format.json { render :show, status: :created, location: @monitoringzusk }
      else
        format.html { render :new }
        format.json { render json: @monitoringzusk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoringzusks/1
  # PATCH/PUT /monitoringzusks/1.json
  def update
    respond_to do |format|
      if @monitoringzusk.update(monitoringzusk_params)
        format.html { redirect_to @monitoringzusk, notice: 'Monitoringzusk was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoringzusk }
      else
        format.html { render :edit }
        format.json { render json: @monitoringzusk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoringzusks/1
  # DELETE /monitoringzusks/1.json
  def destroy
    @monitoringzusk.destroy
    respond_to do |format|
      format.html { redirect_to monitoringzusks_url, notice: 'Monitoringzusk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoringzusk
      @monitoringzusk = Monitoringzusk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monitoringzusk_params
      params.require(:monitoringzusk).permit(:server_id, :komponente_id, :werte, :monitoring_id)
    end
end
