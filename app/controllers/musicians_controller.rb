class MusiciansController < ApplicationController

    before_action :find_musician, only: [:update, :destroy]

    def create
        @musician = Musician.create(musician_params)
        render json: @musician.page_serializer
    end

    def update
        @musician.update(musician_params)
        if @musician.save
            render json: @musician, status: accepted
        else
            render json: {errors: @musician.errors.full_messages}, status: unprocessible_entity
        end
    end

    def destroy
        @musician.destroy
        render json: @musician.page_serializer
    end

    private

    def musician_params
        params.permit(:name, :zip, :user_id, :bio)
    end

    def find_musician
        @musician = Musician.find(params[:id])
    end
    
end
