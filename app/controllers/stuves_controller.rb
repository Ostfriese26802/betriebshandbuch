class StuvesController < ApplicationController
  before_action :set_stufe, only: [:show, :edit, :update, :destroy]

  # GET /stuves
  # GET /stuves.json
  def index
    @kundes = Kunde.all
    @stuves = Stufe.all
  end

  # GET /stuves/1
  # GET /stuves/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /stuves/new
  def new
    
    @kundes = Kunde.all
    @stufe = Stufe.new
  end

  # GET /stuves/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /stuves
  # POST /stuves.json
  def create
    @kundes = Kunde.all
    @stufe = Stufe.new(stufe_params)

    respond_to do |format|
      if @stufe.save
        format.html { redirect_to @stufe, notice: 'Stufe was successfully created.' }
        format.json { render :show, status: :created, location: @stufe }
      else
        format.html { render :new }
        format.json { render json: @stufe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stuves/1
  # PATCH/PUT /stuves/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @stufe.update(stufe_params)
        format.html { redirect_to @stufe, notice: 'Stufe was successfully updated.' }
        format.json { render :show, status: :ok, location: @stufe }
      else
        format.html { render :edit }
        format.json { render json: @stufe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stuves/1
  # DELETE /stuves/1.json
  def destroy
    @kundes = Kunde.all
    @stufe.destroy
    respond_to do |format|
      format.html { redirect_to stuves_url, notice: 'Stufe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stufe
      @stufe = Stufe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stufe_params
      params.require(:stufe).permit(:name, :beschreibung, :kunde_id)
    end
end
