class RentalsController < ApplicationController
    def new
        @rental = Rental.new
    end

    def create
        @rental = Rental.new(rentals_params)
    end

private

    def rentals_params
        params.require(:rental).permit(:date)
    end
end

