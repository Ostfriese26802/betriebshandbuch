class KomponentenservicesController < ApplicationController
  before_action :set_komponentenservice, only: [:show, :edit, :update, :destroy]

  # GET /komponentenservices
  # GET /komponentenservices.json
  def index
    @kundes = Kunde.all
    @komponentenservices = Komponentenservice.all
  end

  # GET /komponentenservices/1
  # GET /komponentenservices/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /komponentenservices/new
  def new
    @kundes = Kunde.all
    @komponentenservice = Komponentenservice.new
  end

  # GET /komponentenservices/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /komponentenservices
  # POST /komponentenservices.json
  def create
    @kundes = Kunde.all
    @komponentenservice = Komponentenservice.new(komponentenservice_params)

    respond_to do |format|
      if @komponentenservice.save
        format.html { redirect_to @komponentenservice, notice: 'Komponentenservice was successfully created.' }
        format.json { render :show, status: :created, location: @komponentenservice }
      else
        format.html { render :new }
        format.json { render json: @komponentenservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /komponentenservices/1
  # PATCH/PUT /komponentenservices/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @komponentenservice.update(komponentenservice_params)
        format.html { redirect_to @komponentenservice, notice: 'Komponentenservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @komponentenservice }
      else
        format.html { render :edit }
        format.json { render json: @komponentenservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /komponentenservices/1
  # DELETE /komponentenservices/1.json
  def destroy
    @kundes = Kunde.all
    @komponentenservice.destroy
    respond_to do |format|
      format.html { redirect_to komponentenservices_url, notice: 'Komponentenservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_komponentenservice
      @komponentenservice = Komponentenservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def komponentenservice_params
      params.require(:komponentenservice).permit(:name, :komponente_id, :beschreibung)
    end
end
