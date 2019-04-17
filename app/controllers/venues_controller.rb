class VenuesController < ApplicationController

    before_action :find_venue, only: [:update, :destroy]

    def create
        @venue = Venue.create(venue_params)
        @venue.create_page_tidbits(params[:tidbits])
        render json: @venue.page_serializer
    end

    def update
        @venue.update(venue_params)
        @venue.create_page_tidbits(params[:tidbits])
        if @venue.save
            render json: @venue.page_serializer, status: :accepted
        else
            render json: {errors: @venue.errors.full_messages}, status: unprocessible_entity
        end
    end

    def destroy
        @venue.destroy
        render json: @venue.page_serializer
    end

    private

    def venue_params
        params.require(:bc).permit(:name, :zip, :user_id, :bio, :address)
    end

    def find_venue
        @venue = Venue.find(params[:id])
    end
    
end
