class ApplikationsController < ApplicationController
  before_action :set_applikation, only: [:show, :edit, :update, :destroy]

  # GET /applikations
  # GET /applikations.json
  def index
    @applikations = Applikation.all
    @kundes = Kunde.all
  end

  # GET /applikations/1
  # GET /applikations/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /applikations/new
  def new
    @applikation = Applikation.new
    @kundes = Kunde.all
  end

  # GET /applikations/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /applikations
  # POST /applikations.json
  def create
    @kundes = Kunde.all
    @applikation = Applikation.new(applikation_params)

    respond_to do |format|
      if @applikation.save
        format.html { redirect_to "/start/index/#{applikation_params[:kunde_id]}/#{@applikation.id}" , notice: 'Applikation was successfully created.' }
        format.json { render :show, status: :created, location: @applikation }
      else
        format.html { render :new }
        format.json { render json: @applikation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applikations/1
  # PATCH/PUT /applikations/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @applikation.update(applikation_params)
        format.html { redirect_to "/start/index/#{applikation_params[:kunde_id]}/#{@applikation.id}", notice: 'Applikation was successfully updated.' }
        format.json { render :show, status: :ok, location: @applikation }
      else
        format.html { render :edit }
        format.json { render json: @applikation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applikations/1
  # DELETE /applikations/1.json
  def destroy
    @kundes = Kunde.all
    @applikation.destroy
    respond_to do |format|
      format.html { redirect_to request.referer, notice: 'Applikation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applikation
      @applikation = Applikation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def applikation_params
      params.require(:applikation).permit(:name, :beschreibung, :kunde_id)
    end
end
