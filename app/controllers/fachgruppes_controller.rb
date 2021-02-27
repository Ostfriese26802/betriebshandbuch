class FachgruppesController < ApplicationController
  before_action :set_fachgruppe, only: [:show, :edit, :update, :destroy]
  


  

  # GET /fachgruppes
  # GET /fachgruppes.json
  def index
    @fachgruppes = Fachgruppe.all
    @kundes = Kunde.all
  end

  # GET /fachgruppes/1
  # GET /fachgruppes/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /fachgruppes/new
  def new
    @fachgruppe = Fachgruppe.new
    @kundes = Kunde.all
  end

  # GET /fachgruppes/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /fachgruppes
  # POST /fachgruppes.json
  def create
    @fachgruppe = Fachgruppe.new(fachgruppe_params)
    @kundes = Kunde.all

    respond_to do |format|
      if @fachgruppe.save
        format.html { redirect_to @fachgruppe, notice: 'Fachgruppe was successfully created.' }
        format.json { render :show, status: :created, location: @fachgruppe }
      else
        format.html { render :new }
        format.json { render json: @fachgruppe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fachgruppes/1
  # PATCH/PUT /fachgruppes/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @fachgruppe.update(fachgruppe_params)
        format.html { redirect_to @fachgruppe, notice: 'Fachgruppe was successfully updated.' }
        format.json { render :show, status: :ok, location: @fachgruppe }
      else
        format.html { render :edit }
        format.json { render json: @fachgruppe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fachgruppes/1
  # DELETE /fachgruppes/1.json
  def destroy
    @kundes = Kunde.all
    @fachgruppe.destroy
    respond_to do |format|
      format.html { redirect_to fachgruppes_url, notice: 'Fachgruppe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fachgruppe
      @fachgruppe = Fachgruppe.find(params[:id])
      @kundes = Kunde.all
    end

    # Only allow a list of trusted parameters through.
    def fachgruppe_params
      params.require(:fachgruppe).permit(:name, :telefonnummer, :bereitschaft, :email, :ticketgruppe)
    end
end
