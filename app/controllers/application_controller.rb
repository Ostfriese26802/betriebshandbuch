class ApplicationController < ActionController::Base
    helper_method :current_benutzer
    before_action :authenticate_benutzer!
  
    def authenticate_benutzer!
      unless current_benutzer
        redirect_to login_path, notice: 'Please login'
      end
    end
  
    def current_benutzer
      if session[:benutzer_id]
        @current_benutzer ||= Benutzer.find(session[:benutzer_id])
      else
        @current_benutzer = nil
      end
    end
end
