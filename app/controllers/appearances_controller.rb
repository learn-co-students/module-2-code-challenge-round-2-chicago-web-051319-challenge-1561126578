class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(appearance_params.permit(:guest , :episode , :rating))
        @appearance.save
        # @appearance = Appearance.new
        # @appearance.episode_id = params[:episode_id]
        # @appearance.guest_id = params[:guest_id]
        # @appearance.rating = params[:rating].to_i
        
        # @appearance.create(p)
        redirect_to episode_path(@appearance.episode)
    end

    private
    def appearance_params(*args)
        params.require(:appearance).permit(*args)
    end
end