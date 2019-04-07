class VenuesController < ApplicationController

    before_action :find_venue, only: [:update, :destroy]

    def create

    end

    def update

    end

    def destroy

    end

    private

    def venue_params
        params.permit(:name, :zip, :user_id, :bio)
    end

    def find_venue
        @venue = Venue.find(params[:id])
    end
    
end
