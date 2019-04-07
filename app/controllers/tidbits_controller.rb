class TidbitsController < ApplicationController

    def create
        @tidbit = Tidbit.new(params)
    end

    def index

    end

    private

    def tidbit_params

    end
end
