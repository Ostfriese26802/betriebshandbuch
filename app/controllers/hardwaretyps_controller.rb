class HardwaretypsController < ApplicationController
  before_action :set_hardwaretyp, only: [:show, :edit, :update, :destroy]

  # GET /hardwaretyps
  # GET /hardwaretyps.json
  def index
    @kundes = Kunde.all
    @hardwaretyps = Hardwaretyp.all
  end

  # GET /hardwaretyps/1
  # GET /hardwaretyps/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /hardwaretyps/new
  def new
    @kundes = Kunde.all
    @hardwaretyp = Hardwaretyp.new
  end

  # GET /hardwaretyps/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /hardwaretyps
  # POST /hardwaretyps.json
  def create
    @kundes = Kunde.all
    @hardwaretyp = Hardwaretyp.new(hardwaretyp_params)

    respond_to do |format|
      if @hardwaretyp.save
        format.html { redirect_to @hardwaretyp, notice: 'Hardwaretyp was successfully created.' }
        format.json { render :show, status: :created, location: @hardwaretyp }
      else
        format.html { render :new }
        format.json { render json: @hardwaretyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwaretyps/1
  # PATCH/PUT /hardwaretyps/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @hardwaretyp.update(hardwaretyp_params)
        format.html { redirect_to @hardwaretyp, notice: 'Hardwaretyp was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardwaretyp }
      else
        format.html { render :edit }
        format.json { render json: @hardwaretyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwaretyps/1
  # DELETE /hardwaretyps/1.json
  def destroy
    @kundes = Kunde.all
    @hardwaretyp.destroy
    respond_to do |format|
      format.html { redirect_to hardwaretyps_url, notice: 'Hardwaretyp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardwaretyp
      @hardwaretyp = Hardwaretyp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hardwaretyp_params
      params.require(:hardwaretyp).permit(:name)
    end
end
