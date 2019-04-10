class TidbitsController < ApplicationController

    def create
        @tidbit = Tidbit.new(params)
    end

    def index
        render json: Tidbit.index_serializer
    end

    private

    def tidbit_params

    end
end
