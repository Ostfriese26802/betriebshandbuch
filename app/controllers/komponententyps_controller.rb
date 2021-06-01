class KomponententypsController < ApplicationController
  before_action :set_komponententyp, only: [:show, :edit, :update, :destroy]

  # GET /komponententyps
  # GET /komponententyps.json
  def index
    @kundes = Kunde.all
    @komponententyps = Komponententyp.all
  end

  # GET /komponententyps/1
  # GET /komponententyps/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /komponententyps/new
  def new
    @kundes = Kunde.all
    @komponententyp = Komponententyp.new
  end

  # GET /komponententyps/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /komponententyps
  # POST /komponententyps.json
  def create
    @kundes = Kunde.all
    @komponententyp = Komponententyp.new(komponententyp_params)

    respond_to do |format|
      if @komponententyp.save
        format.html { redirect_to @komponententyp, notice: 'Komponententyp was successfully created.' }
        format.json { render :show, status: :created, location: @komponententyp }
      else
        format.html { render :new }
        format.json { render json: @komponententyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /komponententyps/1
  # PATCH/PUT /komponententyps/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @komponententyp.update(komponententyp_params)
        format.html { redirect_to @komponententyp, notice: 'Komponententyp was successfully updated.' }
        format.json { render :show, status: :ok, location: @komponententyp }
      else
        format.html { render :edit }
        format.json { render json: @komponententyp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komponententyps/1
  # DELETE /komponententyps/1.json
  def destroy
    @kundes = Kunde.all
    @komponententyp.destroy
    respond_to do |format|
      format.html { redirect_to komponententyps_url, notice: 'Komponententyp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_komponententyp
      @komponententyp = Komponententyp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def komponententyp_params
      params.require(:komponententyp).permit(:name)
    end
end
