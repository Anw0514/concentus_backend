class BandsController < ApplicationController

    before_action :find_band, only: [:update, :destroy]

    def create
        @band = Band.create(band_params)
        @band.create_page_tidbits(tidbit_params[:tidbits])
        @band.add_band_members(member_params[:members])
        if @band.save
            render json: Band.last.page_serializer, status: :accepted
        else
            render json: {errors: @band.errors.full_messages}, status: unprocessible_entity
        end
    end

    def update
        @band.update(band_params)
        @band.create_page_tidbits(tidbit_params[:tidbits])
        @band.add_band_members(member_params[:members])
        if @band.save
            render json: Band.find(@band.id).page_serializer, status: :accepted
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
        params.require(:bc).permit(:name, :zip, :user_id, :bio, :yt_video)
    end

    def member_params
        params.require(:bc).permit(members:[[ :id, :name, :type, :role ]])
    end

    def tidbit_params
        params.require(:bc).permit(tidbits:[])
    end

    def find_band
        @band = Band.find(params[:id])
    end
    
end
