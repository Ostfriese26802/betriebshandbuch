class ServersController < ApplicationController
  before_action :set_server, only: [:show, :edit, :update, :destroy]

  # GET /servers
  # GET /servers.json
  def index
    @kundes = Kunde.all
    @servers = Server.all
  end

  # GET /servers/1
  # GET /servers/1.json
  def show
    @kundes = Kunde.all
  end

  # GET /servers/new
  def new
    @kundes = Kunde.all
    @server = Server.new
  end

  # GET /servers/1/edit
  def edit
    @kundes = Kunde.all
  end

  # POST /servers
  # POST /servers.json
  def create
    @kundes = Kunde.all
    @server = Server.new(server_params)

    respond_to do |format|
      if @server.save
        format.html { redirect_to "/servers/index/#{server_params[:kunde_id]}", notice: 'Server was successfully created.' }
        format.json { render :show, status: :created, location: @server }
      else
        format.html { render :new }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servers/1
  # PATCH/PUT /servers/1.json
  def update
    @kundes = Kunde.all
    respond_to do |format|
      if @server.update(server_params)
        format.html { redirect_to "/servers/index/#{server_params[:kunde_id]}", notice: 'Server was successfully updated.' }
        format.json { render :show, status: :ok, location: @server }
      else
        format.html { render :edit }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servers/1
  # DELETE /servers/1.json
  def destroy
    @kundes = Kunde.all
    @server.destroy
    respond_to do |format|
      format.html { redirect_to request.referer, notice: 'Server was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server
      @server = Server.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def server_params
      params.require(:server).permit(:name, :ip, :kunde_id, :betriebssystem_id, :archiviert)
    end
end
