class TechbenutzersController < ApplicationController
  before_action :set_techbenutzer, only: [:show, :edit, :update, :destroy]

  # GET /techbenutzers
  # GET /techbenutzers.json
  def index
    @techbenutzers = Techbenutzer.all
    @kundes = Kunde.all
  end

  # GET /techbenutzers/1
  # GET /techbenutzers/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /techbenutzers/new
  def new
    @techbenutzer = Techbenutzer.new
    @kundes = Kunde.all
  end

  # GET /techbenutzers/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /techbenutzers
  # POST /techbenutzers.json
  def create
    @kundes = Kunde.all
    @techbenutzer = Techbenutzer.new(techbenutzer_params)

    respond_to do |format|
      if @techbenutzer.save
        format.html { redirect_to "/start/index/#{Applikation.find(@techbenutzer.applikation_id).kunde_id}/#{@techbenutzer.applikation_id}", notice: 'Techbenutzer was successfully created.' }
        format.json { render :show, status: :created, location: @techbenutzer }
      else
        format.html { render :new }
        format.json { render json: @techbenutzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techbenutzers/1
  # PATCH/PUT /techbenutzers/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @techbenutzer.update(techbenutzer_params)
        format.html { redirect_to "/start/index/#{Applikation.find(@techbenutzer.applikation_id).kunde_id}/#{@techbenutzer.applikation_id}", notice: 'Techbenutzer was successfully updated.' }
        format.json { render :show, status: :ok, location: @techbenutzer }
      else
        format.html { render :edit }
        format.json { render json: @techbenutzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techbenutzers/1
  # DELETE /techbenutzers/1.json
  def destroy
    @kundes = Kunde.all
    @techbenutzer.destroy
    respond_to do |format|
      format.html { redirect_to request.referer, notice: 'Techbenutzer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techbenutzer
      @techbenutzer = Techbenutzer.find(params[:id])

    end

    
    # Only allow a list of trusted parameters through.
    def techbenutzer_params
      params.require(:techbenutzer).permit(:name, :kennwort, :applikation_id, :beschreibung)
    end
end
