class BandsController < ApplicationController

    before_action :find_band, only: [:update, :destroy]

    def create
        @band = Band.create(band_params)
        @band.create_page_tidbits(params[:tidbits])
        if @band.save
            render json: @band.page_serializer, status: :accepted
        else
            render json: {errors: @band.errors.full_messages}, status: unprocessible_entity
        end
    end

    def update
        @band.update(band_params)
        @venue.create_page_tidbits(params[:tidbits])
        if @band.save
            render json: @band.page_serializer, status: :accepted
        else
            render json: {errors: @band.errors.full_messages}, status: unprocessible_entity
        end
    end

    def destroy
        @band.destroy
        render json: @band.page_serializer
    end

    private

    def band_params
        params.permit(:name, :zip, :user_id, :bio)
    end

    def find_band
        @band = Band.find(params[:id])
    end
    
end
