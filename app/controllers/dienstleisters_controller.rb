class DienstleistersController < ApplicationController
  before_action :set_dienstleister, only: [:show, :edit, :update, :destroy]

  # GET /dienstleisters
  # GET /dienstleisters.json
  def index
    @dienstleisters = Dienstleister.all
    @kundes = Kunde.all
  end

  # GET /dienstleisters/1
  # GET /dienstleisters/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /dienstleisters/new
  def new
    @dienstleister = Dienstleister.new
    @kundes = Kunde.all
  end

  # GET /dienstleisters/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /dienstleisters
  # POST /dienstleisters.json
  def create
    @kundes = Kunde.all
    @dienstleister = Dienstleister.new(dienstleister_params)

    respond_to do |format|
      if @dienstleister.save
        format.html { redirect_to @dienstleister, notice: 'Dienstleister was successfully created.' }
        format.json { render :show, status: :created, location: @dienstleister }
      else
        format.html { render :new }
        format.json { render json: @dienstleister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dienstleisters/1
  # PATCH/PUT /dienstleisters/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @dienstleister.update(dienstleister_params)
        format.html { redirect_to @dienstleister, notice: 'Dienstleister was successfully updated.' }
        format.json { render :show, status: :ok, location: @dienstleister }
      else
        format.html { render :edit }
        format.json { render json: @dienstleister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dienstleisters/1
  # DELETE /dienstleisters/1.json
  def destroy
    @kundes = Kunde.all
    @dienstleister.destroy
    respond_to do |format|
      format.html { redirect_to dienstleisters_url, notice: 'Dienstleister was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dienstleister
      @dienstleister = Dienstleister.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dienstleister_params
      params.require(:dienstleister).permit(:name, :telefonnummer, :bereitschaftsnummer, :servicezeiten, :email, :kunde_id)
    end
end
