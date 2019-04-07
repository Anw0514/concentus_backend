class BandsController < ApplicationController

    before_action :find_band, only: [:update, :destroy]

    def create

    end

    def update

    end

    def destroy

    end

    private

    def band_params
        params.permit(:name, :zip, :user_id, :bio)
    end

    def find_band
        @band = Band.find(params[:id])
    end
    
end
