class SessionsController < ApplicationController
  skip_before_action :authenticate_benutzer!

  def new
    @kundes = Kunde.all
  end

  def create
    @kundes = Kunde.all
    user = Benutzer.find_by(email: params[:email])
    if Benutzer && Benutzer.authenticate(params[:password])
      session[:benutzer_id] = user.id
      redirect_to root_url, notice: "You are logged in."
    else
      flash.now[:alert] = "Your email or password is invalid"
      render :new
    end

  end

  def destroy
    @kundes = Kunde.all
    session[:benutzer_id] = nil
    redirect_to root_url, notice: "You are logged out!"
  end
end
