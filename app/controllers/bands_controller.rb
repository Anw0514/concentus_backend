class BandsController < ApplicationController

    before_action :find_band, only: [:update, :destroy]

    def create
        @band = Band.new(band_params)
        @band.img.attach(params[:img])
        if @band.save
            render json: @band.page_serializer, status: accepted
        else
            render json: {errors: @band.errors.full_messages}, status: unprocessible_entity
        end
    end

    def update
        @band.update(band_params)
        if @band.save
            render json: @band.page_serializer, status: accepted
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
        params.permit(:name, :zip, :user_id, :bio, :img)
    end

    def find_band
        @band = Band.find(params[:id])
    end
    
end
