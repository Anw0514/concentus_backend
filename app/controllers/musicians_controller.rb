class MusiciansController < ApplicationController

    before_action :find_musician, only: [:update, :destroy]

    def create
        @musician = Musician.create(musician_params)
        render json: @musician
    end

    def update
        @musiscian.update(fish_params)
        if @musiscian.save
            render json: @musiscian, status: accepted
        else
            render json: {errors: @musiscian.errors.full_messages}, status: unprocessible_entity
        end
    end

    def destroy

    end

    private

    def musician_params
        params.permit(:name, :zip, :user_id, :bio)
    end

    def find_musician
        @musician = Musician.find(params[:id])
    end
    
end
