class GhostMusiciansController < ApplicationController

    def create
        @ghost = GhostMusician.create(ghost_params)
        render json: @ghost.member_serializer
    end

    private

    def ghost_params
        params.permit(:name)
    end

end
