class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
   @kundes = Kunde.all
  end

  def create
   @kundes = Kunde.all
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to '/welcome'
    else
       redirect_to '/login'
    end
 end

  def login
   @kundes = Kunde.all
  end

  def welcome
   @kundes = Kunde.all
  end

  def page_requires_login
   @kundes = Kunde.all
  end

  def destroy
   session[:user_id] = nil
   redirect_to root_url, notice: "Du wurdest ausgeloggt!"
 end
end
