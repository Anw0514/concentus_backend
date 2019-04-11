class MusiciansController < ApplicationController

    before_action :find_musician, only: [:update, :destroy]

    def create
        @musician = Musician.create(musician_params)
        byebug
        # @musician.imgs.attach(params[:img])
        @musician.create_page_tidbits(params[:tidbits])
        if @musician.save
            render json: @musician.page_serializer, status: :accepted
        else
            render json: {errors: @musician.errors.full_messages}, status: unprocessible_entity
        end
    end

    def update
        @musician.update(musician_params)
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
        params.permit(:name, :zip, :user_id, :bio, :links, :skills, :genres, :lookings)
        # musician params are causing a bug. How do I get :img to be separate from them for the update but still be available to attach the image???
    end

    def find_musician
        @musician = Musician.find(params[:id])
    end
    
end
