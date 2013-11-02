class HedgehogsController < ApplicationController
    def index
        @hedgehogs = Hedgehog.all
    end

    def show
        @hedgehog = Hedgehog.find( params[:id])

        rescue ActiveRecord::RecordNotFound
        redirect_to "/hedgehogs"
    end

    def new
        @hedgehog = Hedgehog.new
    end

    def create
        @hedgehog = Hedgehog.new(hedgehog_params)
        if @hedgehog.save
            redirect_to "/hedgehogs/#{@hedgehog.id}"
        else
            render :new
        end
    end

    def hedgehog_params
        params.require(:hedgehog).permit(
            :name,
            :age)
    end
end