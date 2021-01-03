class FachgruppesController < ApplicationController
  before_action :set_fachgruppe, only: [:show, :edit, :update, :destroy]

  # GET /fachgruppes
  # GET /fachgruppes.json
  def index
    @fachgruppes = Fachgruppe.all
  end

  # GET /fachgruppes/1
  # GET /fachgruppes/1.json
  def show
  end

  # GET /fachgruppes/new
  def new
    @fachgruppe = Fachgruppe.new
  end

  # GET /fachgruppes/1/edit
  def edit
  end

  # POST /fachgruppes
  # POST /fachgruppes.json
  def create
    @fachgruppe = Fachgruppe.new(fachgruppe_params)

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
    end

    # Only allow a list of trusted parameters through.
    def fachgruppe_params
      params.require(:fachgruppe).permit(:name, :telefonnummer, :bereitschaft, :email, :ticketgruppe)
    end
end
