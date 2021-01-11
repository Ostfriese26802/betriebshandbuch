class ApplikationsController < ApplicationController
  before_action :set_applikation, only: [:show, :edit, :update, :destroy]

  # GET /applikations
  # GET /applikations.json
  def index
    @applikations = Applikation.all
  end

  # GET /applikations/1
  # GET /applikations/1.json
  def show
  end

  # GET /applikations/new
  def new
    @applikation = Applikation.new
  end

  # GET /applikations/1/edit
  def edit
  end

  # POST /applikations
  # POST /applikations.json
  def create
    @applikation = Applikation.new(applikation_params)

    respond_to do |format|
      if @applikation.save
        format.html { redirect_to @applikation, notice: 'Applikation was successfully created.' }
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
    respond_to do |format|
      if @applikation.update(applikation_params)
        format.html { redirect_to @applikation, notice: 'Applikation was successfully updated.' }
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
    @applikation.destroy
    respond_to do |format|
      format.html { redirect_to applikations_url, notice: 'Applikation was successfully destroyed.' }
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
