class ReferenzsController < ApplicationController
  before_action :set_referenz, only: [:show, :edit, :update, :destroy]

  # GET /referenzs
  # GET /referenzs.json
  def index
    @kundes = Kunde.all
    @referenzs = Referenz.all
  end

  # GET /referenzs/1
  # GET /referenzs/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /referenzs/new
  def new
    @kundes = Kunde.all
    @referenz = Referenz.new
  end

  # GET /referenzs/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /referenzs
  # POST /referenzs.json
  def create
    @kundes = Kunde.all
    @referenz = Referenz.new(referenz_params)

    respond_to do |format|
      if @referenz.save
        format.html { redirect_to "/start/index/#{Applikation.find(referenz_params[:applikation_id]).kunde_id}/#{referenz_params[:applikation_id]}", notice: 'Referenz was successfully created.' }
        format.json { render :show, status: :created, location: @referenz }
      else
        format.html { render :new }
        format.json { render json: @referenz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referenzs/1
  # PATCH/PUT /referenzs/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @referenz.update(referenz_params)
        format.html { redirect_to "/start/index/#{Applikation.find(referenz_params[:applikation_id]).kunde_id}/#{referenz_params[:applikation_id]}", notice: 'Referenz was successfully updated.' }
        format.json { render :show, status: :ok, location: @referenz }
      else
        format.html { render :edit }
        format.json { render json: @referenz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referenzs/1
  # DELETE /referenzs/1.json
  def destroy
    @kundes = Kunde.all
    @referenz.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Referenz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referenz
      @referenz = Referenz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def referenz_params
      params.require(:referenz).permit(:name, :link, :applikation_id)
    end
end
