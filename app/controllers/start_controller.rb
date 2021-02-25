class StartController < ApplicationController
    def index
        @kundes = Kunde.all
        

    end

end