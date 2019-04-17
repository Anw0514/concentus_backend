class MusiciansController < ApplicationController

    before_action :find_musician, only: [:update, :destroy]

    def create
        @musician = Musician.create(musician_params)
        @musician.create_page_tidbits(tidbit_params)
        if @musician.save
            render json: @musician.page_serializer, status: :accepted
        else
            render json: {errors: @musician.errors.full_messages}, status: unprocessible_entity
        end
    end

    def index
        render json: Musician.all.map { |m| m.member_serializer }
    end

    def update
        @musician.update(musician_params)
        @musician.create_page_tidbits(tidbit_params)
        if @musician.save
            render json: @musician.page_serializer, status: :accepted
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
        params.require(:bc).permit(:name, :zip, :user_id, :bio, :yt_video)
    end

    def tidbit_params
        params.require(:bc).permit(tidbits:[])
    end

    def find_musician
        @musician = Musician.find(params[:id])
    end
    
end
