class TidbitsController < ApplicationController

    def create
        @tidbit = Tidbit.create(tidbit_params)
        render json: @tidbit.single_serializer
    end

    def index
        render json: Tidbit.index_serializer
    end

    private

    def tidbit_params
        params.permit(:group, :value)
    end
end
