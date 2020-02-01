class TeasController < ApplicationController

    def index
        @teas = Tea.all
    end

    def show
        render :show
    end



end