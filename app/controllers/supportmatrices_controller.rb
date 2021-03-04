class SupportmatricesController < ApplicationController
  before_action :set_supportmatrix, only: [:show, :edit, :update, :destroy]

  # GET /supportmatrices
  # GET /supportmatrices.json
  def index
    @supportmatrices = Supportmatrix.all
    @kundes = Kunde.all
  end

  # GET /supportmatrices/1
  # GET /supportmatrices/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /supportmatrices/new
  def new
    @supportmatrix = Supportmatrix.new
    @kundes = Kunde.all
  end

  # GET /supportmatrices/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /supportmatrices
  # POST /supportmatrices.json
  def create
    @supportmatrix = Supportmatrix.new(supportmatrix_params)
    @kundes = Kunde.all

    respond_to do |format|
      if @supportmatrix.save
        format.html { redirect_to "/start/index/#{Applikation.find(supportmatrix_params[:applikation_id]).kunde_id}/#{supportmatrix_params[:applikation_id]}", notice: 'Supportmatrix was successfully created.' }
        format.json { render :show, status: :created, location: @supportmatrix }
      else
        format.html { render :new }
        format.json { render json: @supportmatrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supportmatrices/1
  # PATCH/PUT /supportmatrices/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @supportmatrix.update(supportmatrix_params)
        format.html { redirect_to "/start/index/#{Applikation.find(supportmatrix_params[:applikation_id]).kunde_id}/#{supportmatrix_params[:applikation_id]}", notice: 'Supportmatrix was successfully updated.' }
        format.json { render :show, status: :ok, location: @supportmatrix }
      else
        format.html { render :edit }
        format.json { render json: @supportmatrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supportmatrices/1
  # DELETE /supportmatrices/1.json
  def destroy
    @kundes = Kunde.all
    @supportmatrix.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Supportmatrix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supportmatrix
      @supportmatrix = Supportmatrix.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supportmatrix_params
      params.require(:supportmatrix).permit(:applikation_id, :fachgruppe_id, :dienstleister_id, :was, :beschreibung)
    end
end
