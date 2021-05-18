class AufgabensController < ApplicationController
  before_action :set_aufgaben, only: [:show, :edit, :update, :destroy]

  # GET /aufgabens
  # GET /aufgabens.json
  def index
    @kundes = Kunde.all
    @aufgabens = Aufgaben.all
  end

  # GET /aufgabens/1
  # GET /aufgabens/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /aufgabens/new
  def new
    @kundes = Kunde.all
    @aufgaben = Aufgaben.new
  end

  # GET /aufgabens/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /aufgabens
  # POST /aufgabens.json
  def create
    @kundes = Kunde.all
    @aufgaben = Aufgaben.new(aufgaben_params)

    respond_to do |format|
      if @aufgaben.save
        format.html { redirect_to @aufgaben, notice: 'Aufgaben was successfully created.' }
        format.json { render :show, status: :created, location: @aufgaben }
      else
        format.html { render :new }
        format.json { render json: @aufgaben.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aufgabens/1
  # PATCH/PUT /aufgabens/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @aufgaben.update(aufgaben_params)
        format.html { redirect_to @aufgaben, notice: 'Aufgaben was successfully updated.' }
        format.json { render :show, status: :ok, location: @aufgaben }
      else
        format.html { render :edit }
        format.json { render json: @aufgaben.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aufgabens/1
  # DELETE /aufgabens/1.json
  def destroy
    @kundes = Kunde.all
    @aufgaben.destroy
    respond_to do |format|
      format.html { redirect_to aufgabens_url, notice: 'Aufgaben was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aufgaben
      @aufgaben = Aufgaben.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aufgaben_params
      params.require(:aufgaben).permit(:name, :zeitpunkt, :beschreibung, :applikation_id)
    end
end
