class BetriebssystemtypsController < ApplicationController
  before_action :set_betriebssystemtyp, only: [:show, :edit, :update, :destroy]

  # GET /betriebssystemtyps
  # GET /betriebssystemtyps.json
  def index
    @kundes = Kunde.all
    @betriebssystemtyps = Betriebssystemtyp.all
  end

  # GET /betriebssystemtyps/1
  # GET /betriebssystemtyps/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /betriebssystemtyps/new
  def new
    @kundes = Kunde.all
    @betriebssystemtyp = Betriebssystemtyp.new
  end

  # GET /betriebssystemtyps/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /betriebssystemtyps
  # POST /betriebssystemtyps.json
  def create
    @kundes = Kunde.all
    @betriebssystemtyp = Betriebssystemtyp.new(betriebssystemtyp_params)

    respond_to do |format|
      if @betriebssystemtyp.save
        format.html { redirect_to @betriebssystemtyp, notice: 'Betriebssystemtyp was successfully created.' }
        format.json { render :show, status: :created, location: @betriebssystemtyp }
      else
        format.html { render :new }
        format.json { render json: @betriebssystemtyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /betriebssystemtyps/1
  # PATCH/PUT /betriebssystemtyps/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @betriebssystemtyp.update(betriebssystemtyp_params)
        format.html { redirect_to @betriebssystemtyp, notice: 'Betriebssystemtyp was successfully updated.' }
        format.json { render :show, status: :ok, location: @betriebssystemtyp }
      else
        format.html { render :edit }
        format.json { render json: @betriebssystemtyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /betriebssystemtyps/1
  # DELETE /betriebssystemtyps/1.json
  def destroy
    @kundes = Kunde.all
    @betriebssystemtyp.destroy
    respond_to do |format|
      format.html { redirect_to betriebssystemtyps_url, notice: 'Betriebssystemtyp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_betriebssystemtyp
      @betriebssystemtyp = Betriebssystemtyp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def betriebssystemtyp_params
      params.require(:betriebssystemtyp).permit(:name)
    end
end
