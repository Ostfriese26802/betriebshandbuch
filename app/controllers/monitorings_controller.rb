class MonitoringsController < ApplicationController
  before_action :set_monitoring, only: [:show, :edit, :update, :destroy]

  # GET /monitorings
  # GET /monitorings.json
  def index
    @kundes = Kunde.all
    @monitorings = Monitoring.all
  end

  # GET /monitorings/1
  # GET /monitorings/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /monitorings/new
  def new
    @kundes = Kunde.all
    @monitoring = Monitoring.new
  end

  # GET /monitorings/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /monitorings
  # POST /monitorings.json
  def create
    @kundes = Kunde.all
    @monitoring = Monitoring.new(monitoring_params)

    respond_to do |format|
      if @monitoring.save
        format.html { redirect_to @monitoring, notice: 'Monitoring was successfully created.' }
        format.json { render :show, status: :created, location: @monitoring }
      else
        format.html { render :new }
        format.json { render json: @monitoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitorings/1
  # PATCH/PUT /monitorings/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @monitoring.update(monitoring_params)
        format.html { redirect_to @monitoring, notice: 'Monitoring was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoring }
      else
        format.html { render :edit }
        format.json { render json: @monitoring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitorings/1
  # DELETE /monitorings/1.json
  def destroy
    @kundes = Kunde.all
    @monitoring.destroy
    respond_to do |format|
      format.html { redirect_to monitorings_url, notice: 'Monitoring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoring
      @monitoring = Monitoring.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monitoring_params
      params.require(:monitoring).permit(:name, :werte, :beschreibung)
    end
end
