class BenutzersController < ApplicationController
  before_action :set_benutzer, only: [:show, :edit, :update, :destroy]

  # GET /benutzers
  # GET /benutzers.json
  def index
    @kundes = Kunde.all
    @benutzers = Benutzer.all
  end

  # GET /benutzers/1
  # GET /benutzers/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /benutzers/new
  def new
    @kundes = Kunde.all
    @benutzer = Benutzer.new
  end

  # GET /benutzers/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /benutzers
  # POST /benutzers.json
  def create
    @kundes = Kunde.all
    @benutzer = Benutzer.new(benutzer_params)

    respond_to do |format|
      if @benutzer.save
        format.html { redirect_to @benutzer, notice: 'Benutzer was successfully created.' }
        format.json { render :show, status: :created, location: @benutzer }
      else
        format.html { render :new }
        format.json { render json: @benutzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benutzers/1
  # PATCH/PUT /benutzers/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @benutzer.update(benutzer_params)
        format.html { redirect_to @benutzer, notice: 'Benutzer was successfully updated.' }
        format.json { render :show, status: :ok, location: @benutzer }
      else
        format.html { render :edit }
        format.json { render json: @benutzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benutzers/1
  # DELETE /benutzers/1.json
  def destroy
    @kundes = Kunde.all
    @benutzer.destroy
    respond_to do |format|
      format.html { redirect_to benutzers_url, notice: 'Benutzer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benutzer
      @benutzer = Benutzer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def benutzer_params
      params.require(:benutzer).permit(:email, :name, :rechte, :password, :password_confirmation)
    end
end
