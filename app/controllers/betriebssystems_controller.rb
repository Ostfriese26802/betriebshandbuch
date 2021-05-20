class BetriebssystemsController < ApplicationController
  before_action :set_betriebssystem, only: [:show, :edit, :update, :destroy]

  # GET /betriebssystems
  # GET /betriebssystems.json
  def index
    @kundes = Kunde.all
    @betriebssystems = Betriebssystem.all
  end

  # GET /betriebssystems/1
  # GET /betriebssystems/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /betriebssystems/new
  def new
    @kundes = Kunde.all
    @betriebssystem = Betriebssystem.new
  end

  # GET /betriebssystems/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /betriebssystems
  # POST /betriebssystems.json
  def create
    @kundes = Kunde.all
    @betriebssystem = Betriebssystem.new(betriebssystem_params)

    respond_to do |format|
      if @betriebssystem.save
        format.html { redirect_to @betriebssystem, notice: 'Betriebssystem was successfully created.' }
        format.json { render :show, status: :created, location: @betriebssystem }
      else
        format.html { render :new }
        format.json { render json: @betriebssystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /betriebssystems/1
  # PATCH/PUT /betriebssystems/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @betriebssystem.update(betriebssystem_params)
        format.html { redirect_to @betriebssystem, notice: 'Betriebssystem was successfully updated.' }
        format.json { render :show, status: :ok, location: @betriebssystem }
      else
        format.html { render :edit }
        format.json { render json: @betriebssystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /betriebssystems/1
  # DELETE /betriebssystems/1.json
  def destroy
    @kundes = Kunde.all
    @betriebssystem.destroy
    respond_to do |format|
      format.html { redirect_to betriebssystems_url, notice: 'Betriebssystem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_betriebssystem
      @betriebssystem = Betriebssystem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def betriebssystem_params
      params.require(:betriebssystem).permit(:betriebssystemtyp_id, :name)
    end
end
